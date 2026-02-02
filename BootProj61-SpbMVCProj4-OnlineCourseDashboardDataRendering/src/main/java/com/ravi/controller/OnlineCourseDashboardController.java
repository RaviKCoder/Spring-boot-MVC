package com.ravi.controller;

import java.time.Period;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ravi.model.Course;

@Controller
public class OnlineCourseDashboardController {
	
	@RequestMapping("/")
	public String showDashboard(Map<String, Object> map) {
		Course course1=new Course("Java Full Stack", "Mr.Ravi kumar", Period.ofMonths(6), 25000.0);
		Course course2=new Course("Spring boot", "MS.Annu", Period.ofMonths(2), 12000.0);
		
		List<Course> listOfCourse = List.of(course1,course2);
		
		map.put("courses", listOfCourse);

		return "course-list";
	}

}
