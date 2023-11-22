package com.spring.mapshopping.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapshopping.domain.SupportVO;
import com.spring.mapshopping.mapper.SupportMapper;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@Service
@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class SupportService {
	private static SupportService customerSupportService = new SupportService();
	
	public static SupportService getCustomerSupportService() {
		return customerSupportService;
	}
	
	@Autowired
	private SupportMapper customerSupportMapper;
	
	public void addQuestion(SupportVO customerSupportVO) {
		 customerSupportVO.setAddr(customerSupportVO.getAbode());
		customerSupportVO.setPhonenumber(customerSupportVO.getFormattedPhoneNumber());
		customerSupportVO.setQcno(customerSupportVO.getQuestionSelect());
		customerSupportMapper.insertQuestion(customerSupportVO);
	}

	
}

