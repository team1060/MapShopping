package com.spring.project.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
@Builder
@AllArgsConstructor
public class SupportVO {
	private String title;
    private String writer;
    private String addr;
    private String phone1;
    private String phone2;
    private String phone3;
    private String email;
    private String content;
    
    private Long qcno;
    
    private String abode;
    private String phonenumber;
    private String questionSelect;
    
    
    public String getFormattedPhoneNumber() {
        return String.format("%s-%s-%s", this.phone1, this.phone2, this.phone3);
    }

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public void setQcno(String questionSelect) {
	    this.qcno = Long.parseLong(questionSelect);
	}

	public void setAddr(String abode) {
		this.addr = abode;
	}
	
	

   
}
