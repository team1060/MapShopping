package com.spring.mapshopping.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * @author kjy
 * @ Attach VO of Product image   
 */

@Data
@Builder
@NoArgsConstructor  // mybatis
@AllArgsConstructor // builder
public class ProAttachVO {

	private String uuid;
	private String origin;
	private boolean image;
	private String path;
	private Long pno;
	
	public String getQs() {
		List<String> list = new ArrayList<String>();
		list.add("uuid" + uuid);
		list.add("origin" + origin);
		list.add("path" + path);
		
		return String.join("&", list);
	}
	
	public String getUrl() {
		return UriComponentsBuilder.fromPath("")
				.queryParam("uuid", uuid)
				.queryParam("origin", origin)
				.queryParam("path", path)
				.toUriString();
	}
	
	public String getThumb() {
		
		if(!image) return "";
		
		return UriComponentsBuilder.fromPath("")
				.queryParam("uuid", uuid)
				.queryParam("origin", origin)
				.queryParam("path", path)
				.toUriString();
	}
	
//	public File file() {
//		return new File(path)
//	}
	
	
}
