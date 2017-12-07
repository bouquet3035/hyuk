package org.hyuk.service;

import java.util.List;

import org.hyuk.dto.Criteria;
import org.hyuk.dto.ReplyDTO;

public interface ReplyService {
	public void addReply(ReplyDTO replyDTO);
	
	public List<ReplyDTO> listReply(Integer bno); 
	
	public void modifyReply(ReplyDTO replyDTO); 
	
	public void removeReply(Integer rno); 
	
	public List<ReplyDTO> listReplyPage(Integer bno , Criteria cri) ;
	
	public int count(Integer bno) ; 

}
