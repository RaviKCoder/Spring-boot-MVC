package com.ravi.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravi.model.Employee;

@Controller
public class SalaryController {
	
	@GetMapping
	public String showHomePage() {
		return "home";
	}
	
	@GetMapping("/view")
	public String view() {
		return "salary-form";
	}
	
	@PostMapping("/salary")
	public String showSalary(Map<String, Object> map,@ModelAttribute("emp") Employee employee) {
		
		int grossSalary=employee.getBasicSalary()+employee.getHra();
		double taxAmount=(grossSalary*employee.getTaxPercentage())/100;
		double netSalary=grossSalary-taxAmount;
		
		map.put("name", employee.getName());
		map.put("netSalary", netSalary);
		
		return "salary-result";
	}

}
