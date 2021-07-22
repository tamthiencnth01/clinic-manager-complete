package com.clinic.repository;

import com.clinic.model.Medicine;
import com.clinic.model.MedicineCategory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IMedicineRepository extends JpaRepository<Medicine, Long> {
    Iterable<Medicine> findAllByMedicineCategory(MedicineCategory medicineCategory);
    Iterable<Medicine> findAllByNameContaining(String name);
    Page<Medicine> findAllByNameContaining(String name, Pageable pageable);
}
