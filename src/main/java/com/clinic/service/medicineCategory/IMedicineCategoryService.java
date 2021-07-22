package com.clinic.service.medicineCategory;

import com.clinic.model.MedicineCategory;
import com.clinic.service.IGeneralService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface IMedicineCategoryService extends IGeneralService<MedicineCategory> {
    Iterable<MedicineCategory> findAllByNameContaining(String name);
    Page<MedicineCategory> findAll(Pageable pageable);
    Page<MedicineCategory> findAllByNameContaining(String name, Pageable pageable);
}
