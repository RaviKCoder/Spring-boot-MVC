package com.ravi.service;

import java.time.LocalDate;

import org.springframework.stereotype.Service;

@Service
public class SeasonFinderServiceImpl implements ISeasonFinderService {

	@Override
	public String findSeason() {
		LocalDate date = LocalDate.now();
		int month = date.getMonthValue();
		if(month>=3 && month<=6) {
			return "Summer season";
		}else if(month>=7 && month<=9 ){
			return "Rainy season";
		}else {
			return "Winter season";
		}
	}

}
