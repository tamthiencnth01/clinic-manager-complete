package com.clinic.controller.api;

import com.clinic.model.Department;
import com.clinic.model.Employee;
import com.clinic.model.EmployeeType;
import com.clinic.model.Position;
import com.clinic.service.department.IDepartmentService;
import com.clinic.service.employee.IEmployeeService;
import com.clinic.service.employeeType.IEmployeeTypeService;
import com.clinic.service.position.IPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping ("/api/employees")
public class EmployeeAPI {

	@Autowired
	private IEmployeeService employeeService;

	@Autowired
	private IEmployeeTypeService employeeTypeService;

	@Autowired
	private IDepartmentService departmentService;

	@Autowired
	private IPositionService positionService;

	@GetMapping
	public ResponseEntity<Iterable<Employee>> getAllEmployees () {
		Iterable<Employee> employees = employeeService.findAll ();
		if (((List) employees).isEmpty ()) {
			return new ResponseEntity<> (HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<> (employees, HttpStatus.OK);

	}
	@GetMapping ("/view/{id}")
	public ResponseEntity<Employee> getId (@PathVariable Long id) {
		Optional<Employee> employee = employeeService.findById (id);
		if (employee.isPresent ()) {
			return new ResponseEntity<> (employee.get (), HttpStatus.OK);
		} else {
			return new ResponseEntity<> (HttpStatus.NOT_FOUND);
		}
	}

	@GetMapping("/listDoctors")
	public ResponseEntity<Iterable<Employee>> showListDoctors(){
		Iterable<Employee> doctors = employeeService.showListDoctors();
		if (((List) doctors).isEmpty ()) {
			return new ResponseEntity<> (HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<> (doctors, HttpStatus.OK);
	}

	@PostMapping
	public ResponseEntity<Employee> saveEmployee (@RequestBody Employee employee) {
		if (employee.getId () != null) {
			return new ResponseEntity<> (employeeService.save (employee), HttpStatus.OK);
		}
		Optional<EmployeeType> employeeType = employeeTypeService.findById (employee.getEmployeeType ().getId ());
		Optional<Department> department = departmentService.findById (employee.getDepartment ().getId ());
		Optional<Position> position = positionService.findById (employee.getPosition().getId ());
		if (employeeType.isPresent () || department.isPresent () || position.isPresent() ) {
			employee.setEmployeeType (employeeType.get ());
			employee.setDepartment (department.get ());
			employee.setPosition (position.get ());
			return new ResponseEntity<> (employeeService.save (employee), HttpStatus.CREATED);
		}
		return new ResponseEntity<> (HttpStatus.NOT_FOUND);
	}

	@DeleteMapping ()
	public ResponseEntity<Employee> deleteEmployee (@RequestBody Map<String, String> json) {
		Long id = Long.valueOf (json.get ("id"));
		Optional<Employee> employeeOptional = employeeService.findById (id);
		if (! employeeOptional.isPresent ()) {
			return new ResponseEntity<> (HttpStatus.NOT_FOUND);
		}
		employeeService.remove (id);
		return new ResponseEntity<> (employeeOptional.get (), HttpStatus.NO_CONTENT);
	}

}
