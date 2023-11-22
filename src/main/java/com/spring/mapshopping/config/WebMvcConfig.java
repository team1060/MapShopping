package com.spring.project.config;

import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class WebMvcConfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		// "/error" 경로를 "error" 뷰로 매핑
		registry.addViewController("/error").setViewName("error");
	}

}
