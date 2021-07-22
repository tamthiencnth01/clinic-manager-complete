package com.clinic.repository;

import com.clinic.model.Department;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IDepartmentRepository extends JpaRepository<Department, Long> {
	Iterable<Department> findAllByEmployeeType_Id(Long id);
}
