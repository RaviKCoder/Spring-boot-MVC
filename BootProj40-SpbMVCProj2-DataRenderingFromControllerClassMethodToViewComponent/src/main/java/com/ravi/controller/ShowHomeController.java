package com.ravi.controller;

import java.util.Date;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShowHomeController {

	@RequestMapping("/home")
	public String showHomePage(Map<String, Object> map) {
		map.put("sysDate", new Date());
		map.put("age", new Random().nextInt(100));
		return "show_data";
	}	
}
