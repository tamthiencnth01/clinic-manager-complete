package com.clinic.repository;

import com.clinic.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface IEmployeeRepository extends JpaRepository<Employee, Long> {
    @Query ("select e from Employee e where e.position.id = 9 or e.position.id = 3")
    Iterable<Employee> showListDoctors();
}
