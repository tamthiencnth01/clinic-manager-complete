package com.clinic.service.medicine;

import com.clinic.model.Medicine;
import com.clinic.repository.IMedicineRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MedicineService implements IMedicineService {
    @Autowired
    private IMedicineRepository medicineRepository;

    @Override
    public Iterable<Medicine> findAll() {
        return medicineRepository.findAll();
    }

    @Override
    public Optional<Medicine> findById(Long id) {
        return medicineRepository.findById(id);
    }

    @Override
    public Medicine save(Medicine medicine) {
        return medicineRepository.save(medicine);
    }

    @Override
    public void remove(Long id) {
        medicineRepository.deleteById(id);
    }

    @Override
    public Iterable<Medicine> findAllByNameContaining(String name) {
        return medicineRepository.findAllByNameContaining(name);
    }

    @Override
    public Page<Medicine> findAll(Pageable pageable) {
        return medicineRepository.findAll(pageable);
    }

    @Override
    public Page<Medicine> findAllByNameContaining(String name, Pageable pageable) {
        return medicineRepository.findAllByNameContaining(name, pageable);
    }
}
