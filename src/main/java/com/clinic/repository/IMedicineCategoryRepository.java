package com.clinic.repository;

import com.clinic.model.MedicineCategory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IMedicineCategoryRepository extends JpaRepository<MedicineCategory, Long> {
    Iterable<MedicineCategory> findAllByNameContaining(String name);
    Page<MedicineCategory> findAllByNameContaining(String name, Pageable pageable);
}
