package com.spring.mapshopping.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.mapshopping.domain.SupportVO;
import com.spring.mapshopping.service.SupportService;

@Controller
@RequestMapping("/support/*")
public class Support {
	
	@Autowired
	private SupportService customerSupportService = SupportService.getCustomerSupportService();
	
	
	// 고객 문의
	@GetMapping("question")
	public void showQuestionPage() {
		
	}
	
	@PostMapping("question")
	public String processQuestionForm(@RequestParam("questionSelect") String questionSelect, @ModelAttribute SupportVO customerSupportVO, RedirectAttributes redirectAttributes) throws IOException {
		customerSupportService.addQuestion(customerSupportVO);
		redirectAttributes.addFlashAttribute("message", "질문이 성공적으로 등록되었습니다.");
	    return "redirect:/";
	}
	
	
	// FAQ, 자주 묻는 질문
	@GetMapping("faq")
	public void faq() {
		
	}
	
	// 실시간 chat
	@GetMapping("chat")
	public void chat() {
		
	}
	
}
