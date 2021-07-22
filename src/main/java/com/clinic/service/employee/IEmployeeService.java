package com.clinic.service.employee;

import com.clinic.model.Employee;
import com.clinic.service.IGeneralService;

public interface IEmployeeService extends IGeneralService<Employee> {
    Iterable<Employee> showListDoctors();


}
