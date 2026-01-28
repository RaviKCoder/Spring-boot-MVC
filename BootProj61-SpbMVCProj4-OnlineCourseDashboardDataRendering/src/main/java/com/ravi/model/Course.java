package com.ravi.model;

import java.time.Period;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Course {

	private Integer courseId;

	@NonNull
	private String courseName;

	@NonNull
	private String instructor;

	@NonNull
	private Period duration;

	@NonNull
	private Double price;

	
}
