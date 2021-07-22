package com.clinic.controller.api;

import com.clinic.model.MedicineCategory;
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
import java.util.Optional;

@RestController
@RequestMapping("/api/medicineCategories")
public class MedicineCategoryAPI {
    @Autowired
    private IMedicineCategoryService medicineCategoryService;

//    @GetMapping
//    public ResponseEntity<Iterable<MedicineCategory>> allMedicineCategories(
//            @RequestParam("search") Optional<String> name,
//            @PageableDefault(value = 10) Pageable pageable
//    ) {
//        Page<MedicineCategory> medicineCategories;
//        if (name.isPresent()) {
//            medicineCategories = medicineCategoryService.findAllByNameContaining(name.get(), pageable);
//            if (medicineCategories.isEmpty()) {
//                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//            }
//            return new ResponseEntity<>(medicineCategories, HttpStatus.OK);
//        } else {
//            medicineCategories = medicineCategoryService.findAll(pageable);
//            if (medicineCategories.isEmpty()) {
//                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//            }
//            ModelAndView modelAndView = new ModelAndView("/medicineCategory/list");
//            modelAndView.addObject("medicineCategories", medicineCategories);
//            return new ResponseEntity<>(medicineCategories, HttpStatus.OK);
//        }
//    }

    @GetMapping
    public ResponseEntity<Iterable<MedicineCategory>> allMedicineCategories() {
        Iterable<MedicineCategory> medicineCategories = medicineCategoryService.findAll();
        if (((List) medicineCategories).isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(medicineCategories, HttpStatus.OK);
    }

    @GetMapping("/view/{id}")
    public ResponseEntity<MedicineCategory> getId(@PathVariable Long id) {
        Optional<MedicineCategory> medicineCategory = medicineCategoryService.findById(id);
        if (medicineCategory.isPresent()) {
            return new ResponseEntity<>(medicineCategory.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<MedicineCategory> saveMedicineCategory(@RequestBody MedicineCategory medicineCategory) {
        if (medicineCategory.getId() != null) {
            return new ResponseEntity<>(medicineCategoryService.save(medicineCategory), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(medicineCategoryService.save(medicineCategory),HttpStatus.CREATED);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<MedicineCategory> deleteMedicineCategory(@PathVariable Long id) {
        Optional<MedicineCategory> medicineCategoryOptional = medicineCategoryService.findById(id);
        if (!medicineCategoryOptional.isPresent()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        medicineCategoryService.remove(id);
        return new ResponseEntity<>(medicineCategoryOptional.get(), HttpStatus.NO_CONTENT);
    }
}
