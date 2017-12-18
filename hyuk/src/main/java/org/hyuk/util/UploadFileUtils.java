package org.hyuk.util;

import java.awt.image.BufferedImage;
import java.io.File;

import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.springframework.http.MediaType;
import org.springframework.util.FileCopyUtils;

import lombok.extern.java.Log;

@Log
public class UploadFileUtils {
	
	public static String uploadFile(String uploadPath,String originalName) {
		return null ; 
	}
	
	private static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		
		String yearPath =File.separator+cal.get(Calendar.YEAR) ; 
		
		String monthPath= yearPath+ 
						File.separator+
						new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		
		String datePath = monthPath+
						File.separator+
						new DecimalFormat("00").format(cal.get(Calendar.DATE)); 
		makeDir(uploadPath,yearPath,monthPath,datePath); 
		
		log.info("datePath :" +datePath);
		
		return datePath;
		
	}

	  private static void makeDir(String uploadPath, String... paths){
		    
		  log.info("makeDir 颇老 积己 版肺 :"+ uploadPath );
		    if(new File(paths[paths.length-1]).exists()){
		      return;
		    }
	
		    for (String path : paths) {
		        
		        File dirPath = new File(uploadPath + path);
		        
		        log.info("dirPath 颇老 积己 版肺 :"+ uploadPath );
		        
		        if(! dirPath.exists() ){
		          dirPath.mkdir();
		          log.info("颇老 积己");
		        } 
		      }
	}
	
	private static String makeThumbnail(String uploadPath,String path , String fileName) throws Exception {
		
		 BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
		
		 BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,300);
		
		 String thumbnailName =  uploadPath + path + File.separator +"s_"+ fileName;
		
		 File newFile = new File(thumbnailName);
		
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		
		ImageIO.write(destImg, formatName.toString(), newFile); 
		
		
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}
	
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData)throws Exception{
		
		 UUID uid = UUID.randomUUID();
		 log.info("uid:"+uid);
		 
		 String savedName = uid.toString() +"_"+originalName;
		 log.info("savedName:"+savedName);
		 
		 String savedPath = calcPath(uploadPath);
		 log.info("savedPath:"+savedPath);
		 
		 File target = new File(uploadPath+savedPath,savedName);//+savedPath,savedName
		 log.info("target:"+target);
		 log.info("uploadPath:"+uploadPath);
		 
		 FileCopyUtils.copy(fileData, target);
		 log.info("fileData:"+fileData);
		 log.info("target:"+target);
		 
		 
		  String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		  
		  String uploadedFileName = null;
		  
		  if(MediaUtils.getMediaType(formatName) != null){
		      uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
		    }else{
		      uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
		    }
		  
		  
		    
		return uploadedFileName;
		
	}
	
	private static String makeIcon(String uploadPath,String path , String fileName)throws Exception{
		
		 String iconName = 
			        uploadPath + path + File.separator+ fileName;
		
		 return iconName.substring(
			        uploadPath.length()).replace(File.separatorChar, '/');
		
	}
	
}
