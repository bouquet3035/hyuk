package org.hyuk.web;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/*")
public class UploadController {
	
	@Resource(name="uploadPath") 
	private String uploadPath; 


	@GetMapping("/uploadForm")
	public void uploadForm() {
		log.info("GET规侥  /uploadForm ") ; 
	}
	
	
	@PostMapping("/uploadForm")
	public String  uploadFeom(MultipartFile file, Model model) throws Exception {
		log.info("POST规侥  /uploadForm ");
		log.info("originName:"+file.getOriginalFilename());
		log.info("size:"+file.getSize());
		log.info("contentType:"+file.getContentType());
		
		String savedName= uploadFile(file.getOriginalFilename(),file.getBytes());
		
		model.addAttribute("savedName",savedName);
		
		return "uploadResult" ; 
		
	}
	
	private String uploadFile (String originalName, byte[] fileData) throws Exception {
		
		UUID uid= UUID.randomUUID(); 
		
		String savedName = uid.toString()+"_"+originalName ; 
		
		File target = new File(uploadPath,savedName);
		
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
		
	}
	
	@GetMapping("/uploadAjax")
	public void uploadAjax() {
		log.info("GET规侥 / uploadAjax");
	}
	
	@ResponseBody
	@RequestMapping(value ="/uploadAjax", method=RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) {
		
		log.info("POST规侥 /uploadAjax");
		log.info("size:"+file.getSize());
		log.info("contentType:"+file.getContentType());
		
		return new ResponseEntity<>(file.getOriginalFilename(),HttpStatus.CREATED);
		
	}
	
}
