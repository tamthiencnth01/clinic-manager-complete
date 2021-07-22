package com.clinic.service.medicineCategory;

import com.clinic.model.MedicineCategory;
import com.clinic.repository.IMedicineCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MedicineCategoryService implements IMedicineCategoryService {
    @Autowired
    private IMedicineCategoryRepository medicineCategoryRepository;

    @Override
    public Iterable<MedicineCategory> findAll() {
        return medicineCategoryRepository.findAll();
    }

    @Override
    public Optional<MedicineCategory> findById(Long id) {
        return medicineCategoryRepository.findById(id);
    }

    @Override
    public MedicineCategory save(MedicineCategory medicineCategory) {
        return medicineCategoryRepository.save(medicineCategory);
    }

    @Override
    public void remove(Long id) {
        medicineCategoryRepository.deleteById(id);
    }

    @Override
    public Iterable<MedicineCategory> findAllByNameContaining(String name) {
        return medicineCategoryRepository.findAllByNameContaining(name);
    }

    @Override
    public Page<MedicineCategory> findAll(Pageable pageable) {
        return medicineCategoryRepository.findAll(pageable);
    }

    @Override
    public Page<MedicineCategory> findAllByNameContaining(String name, Pageable pageable) {
        return medicineCategoryRepository.findAllByNameContaining(name, pageable);
    }
}
