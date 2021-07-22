package com.clinic.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/employees")

public class EmployeeController {
	@GetMapping
	public ModelAndView listEmployees() {
		ModelAndView model = new ModelAndView("/employee/listEmployee");
		return model;
	}
}
