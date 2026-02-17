package com.ravi.configurer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.ravi.interceptors.LoginInterceptor;

@Component
public class MyWebMVCConfigurer implements WebMvcConfigurer {
	
	@Autowired
	LoginInterceptor loginInterceptor;

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loginInterceptor)
				.addPathPatterns("/dashboard","/logout")
				.excludePathPatterns("/","/login","/doLogin","/invalid");
	}
	
}
