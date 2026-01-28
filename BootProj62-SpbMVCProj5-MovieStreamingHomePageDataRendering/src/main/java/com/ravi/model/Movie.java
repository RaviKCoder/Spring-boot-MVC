package com.ravi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class Movie {

	private Integer movieId;

	@NonNull
	private String title;

	@NonNull
	private String genre;

	@NonNull
	private Double rating;

	@NonNull
	private String language;

	
}
