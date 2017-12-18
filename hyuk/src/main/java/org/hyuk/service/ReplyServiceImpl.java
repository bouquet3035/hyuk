package org.hyuk.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.hyuk.dto.Criteria;
import org.hyuk.dto.ReplyDTO;
import org.hyuk.mapper.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;
@Service
@Log
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper replyMapper; 
	
	@Override
	public void addReply(ReplyDTO replyDTO) {
		// TODO Auto-generated method stub
		log.info("replyDTO:"+replyDTO);
		replyMapper.create(replyDTO);
	}

	@Override
	public List<ReplyDTO> listReply(Integer bno) {
		// TODO Auto-generated method stub
		return replyMapper.list(bno);
	}

	@Override
	public void modifyReply(ReplyDTO replyDTO) {
		// TODO Auto-generated method stub
		replyMapper.update(replyDTO);
	}

	@Override
	public void removeReply(Integer rno) {
		// TODO Auto-generated method stub
		replyMapper.delete(rno);
	}

	@Override
	public List<ReplyDTO> listReplyPage(Integer bno, Criteria cri) {
			log.info("listReplyPage bno:"+bno);
			log.info("listReplyPage cri:"+cri);
		    return replyMapper.listPage(bno, cri); 
	}

	@Override
	public int count(Integer bno) {
		// TODO Auto-generated method stub
		return replyMapper.count(bno); 
	}

}
