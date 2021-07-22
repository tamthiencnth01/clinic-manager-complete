package com.clinic.service.employeeType;

import com.clinic.model.EmployeeType;
import com.clinic.repository.IEmployeeTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EmployeeTypeService implements IEmployeeTypeService {
    @Autowired
    private IEmployeeTypeRepository employeeTypeRepository;

    @Override
    public Iterable<EmployeeType> findAll() {
        return employeeTypeRepository.findAll();
    }

    @Override
    public Optional<EmployeeType> findById(Long id) {
        return employeeTypeRepository.findById(id);
    }

    @Override
    public EmployeeType save(EmployeeType employeeType) {
        return employeeTypeRepository.save(employeeType);
    }

    @Override
    public void remove(Long id) {
        employeeTypeRepository.deleteById(id);
    }

}
