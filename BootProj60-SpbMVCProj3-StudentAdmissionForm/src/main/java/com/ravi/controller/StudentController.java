package com.ravi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravi.model.Student;

@Controller
public class StudentController {
	
	@GetMapping
	public String showForm() {
		
		return "admission-form";
	}
	
	@PostMapping("/submit-form")
	public String submitForm(Model model,@ModelAttribute("stu") Student student) {
		
		model.addAttribute("student",student);
		
		return "confirmation";
	}

}
