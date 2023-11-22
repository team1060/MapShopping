package com.spring.project.domain;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String tel;
	private String addr;
	private String email;
	private int grade; // 관리자, 사업자, 고객 여부 
	
	/*
	 * 비밀번호 암호화 
	 */
	public MemberVO encodePassword(PasswordEncoder passwordEncoder) {
		this.pw = passwordEncoder.encode(this.pw);
		return this;
	}
	
	List<AuthVO> auths;
}
