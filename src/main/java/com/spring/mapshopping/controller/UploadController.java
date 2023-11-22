package com.spring.mapshopping.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.mapshopping.domain.ProAttachVO;

import lombok.extern.log4j.Log4j2;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@Log4j2
public class UploadController {
	
	public static final String UPLOAD_PATH = "c:/upload";
	
	@GetMapping("uploadForm")
	public void uploadForm() {
		log.info("uploadForm");
	}
	
	@PostMapping("uploadForm")
	public void uploadForm(MultipartFile[] files, String common) throws Exception{
		for(MultipartFile mf : files) {
			log.info(mf.getOriginalFilename());
			log.info(mf.getSize());
			
			mf.transferTo(new File(UPLOAD_PATH, mf.getOriginalFilename()));
		}
		log.info(files);
		log.info(common);
	}
	
	@GetMapping("uploadAjax")
	public void uploadAjax(){
		log.info("uploadAjax"); // health check
	}
	
	@PostMapping("uploadAjax") @ResponseBody
	public List<ProAttachVO> uploadAjax(List<MultipartFile> files) throws Exception{
		List<ProAttachVO> list = new ArrayList<>();
		
		File uploadPath = new File(UPLOAD_PATH, getFolder());  // getFolder method 생성
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		for(MultipartFile mf : files) {
			
			ProAttachVO attach = new ProAttachVO();
			
			attach.setUuid(UUID.randomUUID().toString());
			attach.setOrigin(mf.getOriginalFilename());
			attach.setPath(getFolder());
			
			String fileName = attach.getUuid() + "_" + attach.getOrigin();
			
			File file = new File(uploadPath, fileName);
			mf.transferTo(file);
			
			boolean image = checkImageType(file);  // checkImageType method 생성
			
			if(image) {
				File thumbFile = new File(uploadPath, "s_" + fileName);
				
				try (FileOutputStream fos = new FileOutputStream(thumbFile)){
					
					Thumbnailator.createThumbnail(mf.getInputStream(), fos, 200, 200);
					
				} catch (Exception e) {
					image = false;
					thumbFile.delete();
				}
			}
			attach.setImage(image);
			list.add(attach);
			// 원본 파일명, 이미지 여부, uuid, path (getFolder)
		}
		log.info(files); 
		
		return list;
	}

	private String getFolder() {

		return new SimpleDateFormat("yyyy/MM/dd").format(new Date());
	}
	
	private boolean checkImageType(File file){
		try {
			String contentType = Files.probeContentType(file.toPath());
			log.info(contentType);
			return contentType.startsWith("image");
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (RuntimeException e) {
			return false;
		}
		return false;
	}
	
}
