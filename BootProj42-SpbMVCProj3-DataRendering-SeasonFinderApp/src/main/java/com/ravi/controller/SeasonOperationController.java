package com.ravi.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ravi.service.ISeasonFinderService;

@Controller
public class SeasonOperationController {

	@Autowired
	ISeasonFinderService seasonFinderService;
	
	
	
	@RequestMapping("/")
	public String showHome() {
		return "welcome";
	}
	
	@RequestMapping("/season")
	public String showSeason(Map<String, Object> map) {
		
		String season = seasonFinderService.findSeason();
		map.put("season", season);
		
		return "display";
	}
	
}
