package org.hyuk.web;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hyuk.dto.LoginDTO;
import org.hyuk.dto.UserDTO;
import org.hyuk.service.UserService;
import org.omg.PortableInterceptor.USER_EXCEPTION;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Inject
	private UserService userService; 
	
	@GetMapping("/login")
	public void loginGET (@ModelAttribute("dto") LoginDTO dto) {
		log.info("login GET 컨트롤러");
	}
	@GetMapping("/loginPost")
	public void loginPOSTGet (@ModelAttribute("dto") LoginDTO dto) {
		log.info("loginPOSTGet GET 방식 ");
	}
	
	@PostMapping("/loginPost")
	public String loginPOST (LoginDTO dto,HttpSession session, Model model) {
		log.info("1.loginpost POST 컨트롤러");
		log.info("2.session:"+session);
		log.info("3.LoginDTO:"+dto);
		UserDTO user = userService.loing(dto);
		log.info("user:"+user);
		if(user == null) {
			log.info("4.loginpost POST 컨트롤러");
			return "/";
		}
		model.addAttribute("userdto",user);
		log.info("5.loginPOST...........END");
		return "user/loginPost";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws Exception{
		log.info("1.logout GET방식 컨트롤러");
		Object obj = session.getAttribute("login"); 
		
		if(obj != null) {
			UserDTO dto= (UserDTO) obj; 
			
			session.removeAttribute("login");
			session.invalidate(); 
		}
		log.info("2.logout END..................");
		
		
		return "user/logout"; 
	}

}
