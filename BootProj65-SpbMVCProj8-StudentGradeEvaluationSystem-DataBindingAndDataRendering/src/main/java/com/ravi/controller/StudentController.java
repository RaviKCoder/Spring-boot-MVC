package com.ravi.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravi.model.Student;

@Controller
public class StudentController {
	
	@GetMapping
	public String showHome() {
		return "home";
	}
	
	@GetMapping("/view")
	public String gradeForm() {
		return "student-form";
	}
	
	@PostMapping("/grade")
	public String showStudentGrade(Map<String, Object> map,@ModelAttribute("stu") Student student) {
	
		if(student.getMarks()>=90) {
			map.put("grade", "A");
			map.put("name", student.getStudentName());
		}else if(student.getMarks()>=80 && student.getMarks()<90) {
			map.put("grade", "B");
			map.put("name", student.getStudentName());
		}else if(student.getMarks()>=70 && student.getMarks()<80) {
			map.put("grade", "C");
			map.put("name", student.getStudentName());
		}else{
			map.put("grade", "Fail");
			map.put("name", student.getStudentName());
		}
		
		
		return "student-result";
	}

}
