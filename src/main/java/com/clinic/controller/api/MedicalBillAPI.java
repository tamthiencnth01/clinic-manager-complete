package com.clinic.controller.api;

import com.clinic.model.Employee;
import com.clinic.model.MedicalBill;
import com.clinic.model.Medicine;
import com.clinic.model.Patient;
import com.clinic.service.employee.IEmployeeService;
import com.clinic.service.medicalbill.IMedicalBillService;
import com.clinic.service.medicine.IMedicineService;
import com.clinic.service.patient.IPatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/bills")
public class MedicalBillAPI {

    @Autowired
    private IMedicalBillService medicalBillService;

    @Autowired
    private IPatientService patientService;

    @Autowired
    private IEmployeeService employeeService;

    @Autowired
    private IMedicineService medicineService;

    @GetMapping
    public ResponseEntity<Iterable<MedicalBill>> showListMedicalBill(){
        Iterable<MedicalBill> medicalBills = medicalBillService.findAll();
        if (((List) medicalBills).isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(medicalBills, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<MedicalBill> createMedicalBill(@RequestBody MedicalBill medicalBill){
        if (medicalBill.getId() != null){
            return new ResponseEntity<>(medicalBillService.save(medicalBill),HttpStatus.OK);
        }
        Optional<Employee> doctor = employeeService.findById(medicalBill.getEmployee().getId());
        Optional<Patient> patient = patientService.findById(medicalBill.getPatient().getId());
        Optional<Medicine> medicine = medicineService.findById(medicalBill.getMedicine().getId());
        if (doctor.isPresent()||patient.isPresent()||medicine.isPresent()){
            medicalBill.setEmployee(doctor.get());
            medicalBill.setPatient(patient.get());
            medicalBill.setMedicine(medicine.get());
            medicalBill.setDateOnExamination(LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm")));
            return new ResponseEntity<>(medicalBillService.save(medicalBill), HttpStatus.CREATED);
        }else{
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
    @GetMapping("/{id}")
    public ResponseEntity<Iterable<MedicalBill>> findAllByPatientId(@PathVariable Long id){
        Iterable<MedicalBill> medicalBills = medicalBillService.findAllByPatientId(id);
        if (((List) medicalBills).isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(medicalBills,HttpStatus.OK);
    }
    @GetMapping("/chart")
    public ResponseEntity<Iterable<MedicalBill>> showListDoctors(){
        Iterable<MedicalBill> medicalBills = medicalBillService.showListDoctors();
        if (((List) medicalBills).isEmpty()){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(medicalBills,HttpStatus.OK);
    }
}
