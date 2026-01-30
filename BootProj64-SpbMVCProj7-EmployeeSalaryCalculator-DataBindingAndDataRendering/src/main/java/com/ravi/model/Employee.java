package com.ravi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {

	
	private String name;

	private Integer basicSalary;

	private Integer hra;

	private Double taxPercentage;

}
