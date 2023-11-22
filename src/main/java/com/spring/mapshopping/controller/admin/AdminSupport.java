package com.spring.project.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/support1")
public class AdminSupport extends Admin {

	@Override
	protected boolean isAdminUser() {
		// TODO Auto-generated method stub
		return super.isAdminUser();
	}
	
	


}
