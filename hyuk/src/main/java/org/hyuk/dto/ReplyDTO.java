package org.hyuk.dto;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyDTO {

	private Integer rno ; 
	private Integer bno ; 
	private String replytext ; 
	private String replyer; 
	private Date regdate ;
	
}
