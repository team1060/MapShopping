package com.spring.project.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

// admin 폴더 내에 만들때 extends AdminController 붙이기
@Controller
@RequestMapping("/admin")
public abstract class Admin {
	
	@GetMapping("/home")
	public String adminHome() {
		// "admin/home/"으로 들어오는 get 요청 처리하는 로직
		
		// AdminUser 여부 검사
		if (!isAdminUser()) {
			return ""; // AdminUser가 아닌 유저 반환
		}
		
		return ""; // AdminUser에게 보여줄 view
		
	}
	
	// AdminUser 검사
	protected boolean isAdminUser() {
		// 로그인 시 AdminUser인 경우
		
		return true;
	}

}
