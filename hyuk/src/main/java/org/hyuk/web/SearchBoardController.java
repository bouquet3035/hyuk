package org.hyuk.web;

import javax.inject.Inject;

import org.hyuk.dto.PageMaker;
import org.hyuk.dto.SearchCriteria;
import org.hyuk.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;
@Log
@Controller
@RequestMapping("/hyukboard/")
public class SearchBoardController {
	
	@Inject
	BoardService boardservice ; 
	
	@GetMapping("/list")
	public void listPage(@ModelAttribute("cri") SearchCriteria cri , Model model) {
		log.info("///////////  hyukboard/list //////////////");
		log.info("list get ¹æ½Ä ");
		log.info("cri :"+cri.toToString());
		log.info("cirteria : "+cri.toString() );
		model.addAttribute("list",boardservice.listCriteria(cri)) ; 
		
		PageMaker pageMaker = new PageMaker() ; 
		pageMaker.setCri(cri);
		
		log.info("pageMaker : "+pageMaker.toString());
		
		
		pageMaker.setTotalCount(boardservice.listCountCriteria(cri));
		log.info("ÅäÅ»:"+pageMaker.getTotalCount() );
		
		model.addAttribute("pageMaker",pageMaker) ; 
		log.info("////////////////////////////////////////////////////////////////");
	}

}
