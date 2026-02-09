package com.ravi.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Student {
	
	private String studentName;

	private Integer rollNumber;

	//@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dateOfBirth;

	private String course;

	private Long contactNumber;

}
