package com.clinic.repository;

import com.clinic.model.Employee;
import com.clinic.model.MedicalBill;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface IMedicalBillRepository extends JpaRepository<MedicalBill,Long> {
    Iterable<MedicalBill> findAllByPatientId(Long id);

    @Query("select (select fullName from Employee where id = employee_id) as doctorName, count(id) as soLanKham from MedicalBill group by employee_id")
    Iterable<MedicalBill> showListDoctors();
}
