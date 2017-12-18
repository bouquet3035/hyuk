package org.hyuk.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	
	int bno ; 
	String title ; 
	String contents; 
	String writer;
	Date regdate;
	
	String[] files ; 
	

}
