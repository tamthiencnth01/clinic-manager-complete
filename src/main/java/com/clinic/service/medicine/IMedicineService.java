package com.clinic.service.medicine;

import com.clinic.model.Medicine;
import com.clinic.service.IGeneralService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface IMedicineService extends IGeneralService<Medicine> {
    Iterable<Medicine> findAllByNameContaining(String name);
    Page<Medicine> findAll(Pageable pageable);
    Page<Medicine> findAllByNameContaining(String name, Pageable pageable);
}
