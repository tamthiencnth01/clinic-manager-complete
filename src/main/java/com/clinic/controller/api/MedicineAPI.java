package com.clinic.controller.api;

import com.clinic.model.Employee;
import com.clinic.model.Medicine;
import com.clinic.model.MedicineCategory;
import com.clinic.service.medicine.IMedicineService;
import com.clinic.service.medicineCategory.IMedicineCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/medicines")
public class MedicineAPI {
    @Autowired
    private IMedicineService medicineService;

    @Autowired
    private IMedicineCategoryService medicineCategoryService;

    @GetMapping
    public ResponseEntity<Iterable<Medicine>> allMedicines(@RequestParam("search") Optional<String> name, @PageableDefault(value = 5) Pageable pageable) {
        Page<Medicine> medicines;
        if (name.isPresent()) {
            medicines = medicineService.findAllByNameContaining(name.get(), pageable);
            if (medicines.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(medicines, HttpStatus.OK);
        } else {
            medicines = medicineService.findAll(pageable);
            if (medicines.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(medicines, HttpStatus.OK);
        }
    }

    @GetMapping("/view/{id}")
    public ResponseEntity<Medicine> getId(@PathVariable Long id) {
        Optional<Medicine> medicine = medicineService.findById(id);
        if (medicine.isPresent()) {
            return new ResponseEntity<>(medicine.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/listMedicines")
    public ResponseEntity<Iterable<Medicine>> showListMedicines(){
        Iterable<Medicine> medicines = medicineService.findAll();
        if (((List) medicines).isEmpty ()) {
            return new ResponseEntity<> (HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<> (medicines, HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Medicine> saveMedicine(@RequestBody Medicine medicine) {
        if (medicine.getId() != null) {
            return new ResponseEntity<>(medicineService.save(medicine), HttpStatus.OK);
        }
        Optional<MedicineCategory> medicineCategory = medicineCategoryService.findById(medicine.getMedicineCategory().getId());
        if (medicineCategory.isPresent()) {
            medicine.setMedicineCategory(medicineCategory.get());
            return new ResponseEntity<>(medicineService.save(medicine), HttpStatus.CREATED);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Medicine> deleteMedicine(@RequestBody Map<String, String> json) {
        Long id = Long.valueOf(json.get("id"));
        Optional<Medicine> medicineOptional = medicineService.findById(id);
        if (!medicineOptional.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        medicineService.remove(id);
        return new ResponseEntity<>(medicineOptional.get(), HttpStatus.NO_CONTENT);
    }
}
