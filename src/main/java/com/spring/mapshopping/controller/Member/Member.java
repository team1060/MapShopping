package com.spring.mapshopping.controller.Member;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.mapshopping.domain.MemberVO;
import com.spring.mapshopping.service.MemberService;
import com.spring.mapshopping.utils.WebUtils;

import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
//@RequestMapping("/member/*")
public class Member {
	
	@Autowired
	private MemberService service = MemberService.getInstance();
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@GetMapping("/member/join")
	public void join() {
		log.info("join");
	}
	
	@GetMapping("/member/signup")
	public void register() {
		log.info("signup");

	}
	
	@PostMapping("/member/signup")
	public void signup(MemberVO vo, HttpServletResponse resp) throws IOException {
		
		vo.encodePassword(passwordEncoder);
		
		if(service.register(vo) > 0) {
			log.info("회원가입완료");
			WebUtils.alert(resp, "회원가입을 축하합니다!", "/");
		}else {
			WebUtils.alert(resp, "이미 가입된 계정입니다", "");
		}

	}
	
	
}
