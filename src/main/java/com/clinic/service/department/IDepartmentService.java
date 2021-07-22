package com.clinic.service.department;

import com.clinic.model.Department;
import com.clinic.service.IGeneralService;

public interface IDepartmentService extends IGeneralService<Department> {
    Iterable<Department> findAllByEmployeeType_Id(Long id);

}
