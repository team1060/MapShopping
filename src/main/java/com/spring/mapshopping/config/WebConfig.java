package com.spring.project.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import jakarta.servlet.MultipartConfigElement;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletRegistration.Dynamic;

public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {getRootConfigClasses().getClass(), SecurityConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {ServletConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
	@Override
	protected void customizeRegistration(Dynamic registration) {
		
		registration.setInitParameter("throwExceptionIfNoHandlerFound", "true");
		
		MultipartConfigElement element = new MultipartConfigElement(
				"c:/upload",
				2 * 1024 * 1024, 
				10 * 1024 * 1024, 
				2 * 1024 * 1024
				);
		registration.setMultipartConfig(element);
	}
	

}
