package org.hyuk.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.swing.text.html.parser.Entity;

import org.hyuk.dto.Criteria;
import org.hyuk.dto.PageMaker;
import org.hyuk.dto.ReplyDTO;
import org.hyuk.service.ReplyService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/replies/*")
public class ReplyController {

	@Inject
	private ReplyService service; 

	///////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////////////////////
	///////////////////////////////////////////////////////////////////////////////////////////////
	// advensed Rest 연습 코드  댓글 crud 
	@PostMapping("")
	public ResponseEntity<String> register(@RequestBody ReplyDTO dto){
		
		ResponseEntity<String> entity = null ;
		try {
			service.addReply(dto);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK); 
			
		}catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST); 
		}
		return entity; 
	}
	
	@GetMapping("/all/{bno}")

	public ResponseEntity <List<ReplyDTO>> list (@PathVariable("bno") Integer bno){
		
		ResponseEntity<List<ReplyDTO>> entity = null ; 
		
		try {
			entity = new ResponseEntity<>(service.listReply(bno),HttpStatus.OK) ; 
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		}
		return entity ; 
	}
	
	@PatchMapping("/{rno}")
	public ResponseEntity<List<ReplyDTO>> update (@PathVariable("rno") Integer rno ,@RequestBody ReplyDTO replyDTO ){
		ResponseEntity<List<ReplyDTO>> entity = null ; 
		
		try {
			replyDTO.setRno(rno);
			service.modifyReply(replyDTO);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		}
		return entity ; 
	}
	
	@DeleteMapping("/{rno}")
	public ResponseEntity<String> remove (@PathVariable("rno") Integer rno ,@RequestBody ReplyDTO replyDTO ){
		ResponseEntity<String> entity = null ; 
		
		try {
			service.removeReply(rno);
			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK); 
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		}
		return entity ; 
		
		
	}
	
	@GetMapping("/{bno}/{page}")
	public ResponseEntity<Map<String,Object>> listPage (@PathVariable("bno") Integer bno, @PathVariable ("page")Integer page){
		
		ResponseEntity<Map<String,Object>> entity = null ; 
		
		try {
			Criteria cri = new Criteria(); 
			cri.setPage(page);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			Map<String,Object> map = new HashMap<String,Object>(); 
			List<ReplyDTO> list = service.listReplyPage(bno, cri); 
			
			map.put("list", list); 
			
			int replyCount = service.count(bno) ; 
			pageMaker.setTotalCount(replyCount);
			
			map.put("pageMaker", pageMaker); 
			
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK); 
			
			
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST); 
		}
		return entity ; 
		
	}
	
}
