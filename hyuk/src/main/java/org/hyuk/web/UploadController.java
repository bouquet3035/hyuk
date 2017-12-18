package org.hyuk.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.hyuk.util.MediaUtils;
import org.hyuk.util.UploadFileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/*")
public class UploadController {
	
	  private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@Resource(name="uploadPath") 
	private String uploadPath; 


	@GetMapping("/uploadForm")
	public void uploadForm() {
		log.info("GET방식  /uploadForm ") ; 
	}
	
	
	@PostMapping("/uploadForm")
	public String  uploadFeom(MultipartFile file, Model model) throws Exception {
		log.info("POST방식  /uploadForm ");
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
		log.info("GET방식 / uploadAjax");
	}
	
	@ResponseBody
	@RequestMapping(value ="/uploadAjax", method=RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {
		
		log.info("POST방식 /uploadAjax");
		log.info("size:"+file.getSize());
		log.info("contentType:"+file.getContentType());
		
		return new ResponseEntity<>(
				 			UploadFileUtils.uploadFile(uploadPath, 
			                file.getOriginalFilename(), 
			                file.getBytes()), 
				 			HttpStatus.CREATED);

	}
	
	@ResponseBody
	@RequestMapping("/displayFile") //컨트롤러에서 파일 전송 기능 구현 
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception{
		log.info("displayFile 페이지 ");
		InputStream in =null ; 
		
		ResponseEntity<byte[]> entity = null; 
		
		log.info("FileName:"+fileName);
		
		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			
			MediaType mType = MediaUtils.getMediaType(formatName);
					
		    HttpHeaders headers = new HttpHeaders();
		    
		    in =new FileInputStream(uploadPath+fileName) ; 
			
			if(mType != null ) {
				headers.setContentType(mType);
			}else {
				 fileName = fileName.substring(fileName.indexOf("_")+1);       
				 headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			        headers.add("Content-Disposition", "attachment; filename=\""+ 
			          new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
			}
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
			          headers, 
			          HttpStatus.CREATED);
			
		}catch(Exception e) {
			e.printStackTrace();
		      entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally {
			in.close();
		}
		
		return entity ; 
	}
	
	
	@ResponseBody
	@PostMapping("/deleteFile")   // 삭제 처리 
	public ResponseEntity<String> deleteFile(String fileName){
		log.info("delete file:"+fileName);
		
		String formatName= fileName.substring(fileName.lastIndexOf(".")+1) ; 
		log.info("delete file1");
		MediaType mType = MediaUtils.getMediaType(formatName) ;
		log.info("delete file2");
		if(mType!=null) {
			log.info("delete file3");
			String front = fileName.substring(0, 12); 
			log.info("delete file4");
			String end = fileName.substring(14) ; 
			log.info("delete file5");
			new File (uploadPath+(front+end).replace('/', File.separatorChar)).delete(); 
			log.info("delete file6");
		}
		log.info("delete file7");
		new File(uploadPath+fileName.replace('/',File.separatorChar)).delete(); 
		log.info("delete file8");
		return new ResponseEntity<String>("deleted",HttpStatus.OK);  
	}

	@ResponseBody
	@RequestMapping("/deleteAllFiles") 
	public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[]files){
		log.info("deleteAllfiles");
		log.info("delete all files:"+ files);

		log.info("delete allfile:1");
		if(files == null || files.length == 0 ) {
			log.info("delete allfile:2");
			return new ResponseEntity<String>("deleted",HttpStatus.OK); 
		}
		
		for(String fileName : files) {
			log.info("delete allfile:3");
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			log.info("delete allfile:4");
			MediaType mType = MediaUtils.getMediaType(formatName);
			log.info("delete allfile:5");
			if(mType != null) {
				log.info("delete allfile:6");
				String front = fileName.substring(0, 12);
				log.info("delete allfile:7");
				String end = fileName.substring(14) ;
				log.info("delete allfile:8");
				new File(uploadPath + fileName.replace('/', File.separatorChar)).delete(); 
				log.info("delete allfile:9");
			}
		}
		log.info("delete allfile:10");
		return new ResponseEntity<String>("deleted",HttpStatus.OK) ; 
	}
	
	
	
}
