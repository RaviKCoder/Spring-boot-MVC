package com.ravi.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravi.model.Employee;

@Controller
public class MVCController {
	
	@GetMapping
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/register")
	public String formLaunch(@ModelAttribute("employee") Employee employee ) {
		return "employee_register";
	}
	
	@PostMapping("/register")
	public String showFromData(Map<String, Object> map,@ModelAttribute("employee") Employee employee) {
		
		map.put("id", employee.getId());
		map.put("name", employee.getName());
		map.put("salary", employee.getSalary());
		
		return "show_result";
		
	}

}
