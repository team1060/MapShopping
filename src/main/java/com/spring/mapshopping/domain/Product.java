package com.spring.mapshopping.domain;

import java.util.ArrayList;
import java.util.List;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * @author kjy
 * @ Product VO  
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	
	private Long pno;
	private String pname;
	private String price;
	private String pcontent;
	private String prCategory;
	private float nego;
	private int issell;
	private String id;
	private int size;
	
	@Builder.Default
	private List<ProAttachVO> attachs = new ArrayList<>();
	private int replyCnt;

}
