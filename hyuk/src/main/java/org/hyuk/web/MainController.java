package org.hyuk.web;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.inject.Inject;

import org.hyuk.dto.BoardDTO;
import org.hyuk.dto.Criteria;
import org.hyuk.dto.PageMaker;
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

@Controller
@RequestMapping("/dashboard/*")
@Log
public class MainController {
	
	@Inject
	private BoardService boardservice ; 
	
	@GetMapping("/board")
	public void board(Model model) {
		log.info("get���  board.jsp");
		
		model.addAttribute("list",boardservice.selectBoard());
	
	}

	
	@GetMapping("/registerboard")
	public void registerboard() {
		log.info("get��� registerboard.jsp");
	}
	
	
	@PostMapping("/registerboard")
	public String postregisterboard(RedirectAttributes rttr ,BoardDTO bdto ) {
		log.info("post���registerboard.jsp ");
		log.info(bdto.toString());
		boardservice.registerBoard(bdto);
		rttr.addFlashAttribute("msg","success") ;
		return "redirect:/dashboard/listPage";
		
	}
	
	@GetMapping("/viewboard")
	public void viewboard(@RequestParam("bno")int bno ,Model model ) {
		log.info("get��� viewboard.jsp: " + bno);
		//BoardDTO dto = boardservice.viewBoard(bno);
		log.info("" + boardservice.viewBoard(bno));
		//	model.addAttribute("dto", dto);
		model.addAttribute(boardservice.viewBoard(bno)) ;
	}
	

	@PostMapping("/deleteboard")
	public String deleteboard(@RequestParam("bno")int bno ,RedirectAttributes rttr) {
		log.info("post���:���� deleteboard.jsp");
		log.info(""+bno);
	
		boardservice.deleteBoard(bno);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/dashboard/board" ;
	}
	
	@GetMapping("/modifyboard")
	public void modifyboard(int bno ,Model model) {
		log.info("GET���:���� modifyboard.jsp");
		model.addAttribute(boardservice.viewBoard(bno));
	}
	@PostMapping("/modifyboard")
	public String postmodifyboard(BoardDTO bDto , RedirectAttributes rttr) {
		log.info("post���:���� modifyboard.jsp");
		rttr.addFlashAttribute("msg","success");
		boardservice.updateBoard(bDto);
		return "redirect:/dashboard/board" ;
	}
	
	@GetMapping("/listCri")
	public void listAll(Criteria cri ,Model model) {
		log.info("show list page with Criteria....");
		model.addAttribute("list",boardservice.listCriteria(cri) ); 
	}
	@GetMapping("/listPage")
	public void listPage(@ModelAttribute("cri")Criteria cri, Model model) {
		
		log.info("///////////////////////////////////////////////////");
		log.info(cri.toString());
		
		model.addAttribute("list",boardservice.listCriteria(cri)); 
		PageMaker pageMaker = new PageMaker() ; 
		pageMaker.setCri(cri);
		//pagemaker.setTotalCount(131) ; 
		log.info("listPage ������"+cri.toString());
		log.info("listPage ������"+pageMaker.toString());
		pageMaker.setTotalCount(boardservice.listCountCriteria(cri));
		
		log.info("��Ż:"+pageMaker.getTotalCount() );
		
		model.addAttribute("pageMaker",pageMaker) ; 
		
		log.info("///////////////////////////////////////////////////");
	}
	
	


}
