package com.ravi.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ravi.model.Movie;

@Controller
public class TrendingMovieController {

	@RequestMapping("/")
	public String showTrendingMovie(Map<String, Object> map) {
		
		Movie movie1=new Movie("Inception", "Sci-Fi", 8.8, "Top Rated");
		Movie movie2=new Movie("RRR", "Action", 8.2, "Top Rated");
		Movie movie3=new Movie("I", "Action", 5.0, "Average");
		
		
		List<Movie> listOfMovie=List.of(movie1,movie2,movie3);
		map.put("listOfMovie", listOfMovie);
		
		return "movie-list";
		
		
	}
	
}
