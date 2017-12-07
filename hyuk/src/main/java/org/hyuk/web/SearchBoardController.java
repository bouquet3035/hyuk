package org.hyuk.web;

import java.lang.ProcessBuilder.Redirect;

import javax.inject.Inject;

import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.PageMaker;
import org.hyuk.dto.SearchCriteria;
import org.hyuk.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.java.Log;
@Log
@Controller
@RequestMapping("/hyukboard/*")
public class SearchBoardController {
	
	@Inject
	BoardService boardservice ; 
	
	@GetMapping("/list")
	public void listPage(@ModelAttribute("cri") SearchCriteria cri , Model model) {
		log.info("///////////  hyukboard/list //////////////");
		log.info("list get 방식 ");
//		log.info("cri :"+cri.toToString());
//		log.info("cirteria : "+cri.toString() );
		//model.addAttribute("list",boardservice.listCriteria(cri)) ; 
		  model.addAttribute("list",boardservice.listSearchCriteria(cri)); 
		  
		PageMaker pageMaker = new PageMaker() ; 
		pageMaker.setCri(cri);
		
//		log.info("pageMaker : "+pageMaker.toString());
		
		//pageMaker.setTotalCount(boardservice.listCountCriteria(cri));
		pageMaker.setTotalCount(boardservice.listSearchCount(cri));
//		log.info("토탈:"+pageMaker.getTotalCount());
		
		model.addAttribute("pageMaker",pageMaker) ; 
		log.info("////////////////////////////////////////////////////////////////");
	}
	
	@GetMapping("/readPage")
	public void read (@RequestParam("bno") int bno, @ModelAttribute("cri") SearchCriteria cri , Model model ) {
		log.info("read get 방식");
		model.addAttribute(boardservice.viewBoard(bno) ) ;
	}
	
	@PostMapping("/deleteboard")
	public String deleteboard (@RequestParam("bno")int bno,SearchCriteria cri, RedirectAttributes rttr) {
		log.info("deleteboard post 방식");
		
		boardservice.deleteBoard(bno);
		
		rttr.addAttribute("page",cri.getPage()) ; 
		rttr.addAttribute("perPageNum",cri.getPerPageNum()); 
		rttr.addAttribute("searchType",cri.getSearchType()); 
		rttr.addAttribute("keyword",cri.getKeyword()) ; 
		
		rttr.addFlashAttribute("msg","SUCCESS"); 
		
		
		return "redirect:/hyukboard/list"; 
	}
	
	@GetMapping("/modifyboard")	
	public void modifyboard(@RequestParam("bno") int bno,SearchCriteria cri ,Model model) {
		log.info("modifyboard get 방식");
		model.addAttribute(boardservice.viewBoard(bno)) ; 
	}
	
	@PostMapping("/modifyboard")
	public String postmodifyboard(BoardDTO board , SearchCriteria cri, RedirectAttributes rttr) {
	//public String postmodifyboard( RedirectAttributes rttr) {
		log.info("modifyboard post 방식");
		log.info("=======================");
		
		boardservice.updateBoard(board);
		
		rttr.addAttribute("page",cri.getPage()) ; 
		rttr.addAttribute("perPageNum",cri.getPerPageNum()); 
		rttr.addAttribute("searchType",cri.getSearchType()); 
		rttr.addAttribute("keyword",cri.getKeyword()) ; 
		
		rttr.addFlashAttribute("msg","success");
		
		return "redirect:/hyukboard/list" ; 
	}
	
	@GetMapping("/registerboard")
	public void registerboard() {
		log.info("registerboard GET방식");
		
	}
	@PostMapping("/registerboard")
	public String postregisterboard(BoardDTO board ,RedirectAttributes rttr) {
		log.info("registerboard POST 방식");
		
		boardservice.registerBoard(board);
		
		rttr.addFlashAttribute("msg","success"); 
		
		return "redirect:/hyukboard/list";
		
	
	}
}
