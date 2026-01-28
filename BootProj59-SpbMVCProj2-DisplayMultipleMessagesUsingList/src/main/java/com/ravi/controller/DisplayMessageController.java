package com.ravi.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayMessageController {

	@RequestMapping("/messages")
	public String displayMultipleMessage(Map<String, Object> map) {
		System.out.println("DisplayMessageController.displayMultipleMessage()");
		
		
		List<String> messages=new ArrayList<String>();
		messages.add("Welcome");
		messages.add("Spring Boot is fun!");
		messages.add("Keep Learning!");
		
		map.put("messages", messages);		
		return "display";
		
	}
	
}
