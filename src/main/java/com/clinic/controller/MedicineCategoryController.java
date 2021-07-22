package com.clinic.controller;

import com.clinic.service.medicineCategory.IMedicineCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/medicineCategories")
public class MedicineCategoryController {
    @Autowired
    private IMedicineCategoryService medicineCategoryService;

    @GetMapping
    public ModelAndView listMedicineCategories() {
        ModelAndView modelAndView = new ModelAndView("/medicineCategory/list");
        return modelAndView;
    }
}
