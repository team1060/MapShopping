package com.spring.mapshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch.qos.logback.core.model.Model;

@Controller
public class Index {

	@RequestMapping(value = "/test/hello")
	@ResponseBody
	public String helloRuckus(Model model) {
		return "Hello React";
	}
	
}