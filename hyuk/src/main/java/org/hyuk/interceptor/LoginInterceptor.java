package org.hyuk.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hyuk.dto.UserDTO;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;
@Log
public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	private static final String LOGIN ="login";

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,ModelAndView modelAndView) throws Exception {
		log.info("1.postHandle");
		HttpSession session = request.getSession();
		log.info("2.session:"+session);
		ModelMap modelMap= modelAndView.getModelMap();
		log.info("3.modelMap:"+modelMap);
		Object userDTO = modelMap.get("userdto");
		log.info("4.userDTO:"+userDTO);
		if(userDTO != null) {
			log.info("5.new login success");
			session.setAttribute(LOGIN, userDTO);
			//response.sendRedirect("/user/loginPost");
			log.info("6.postHandle");
			Object dest=session.getAttribute("dest"); 
			log.info("7.dest:"+dest);
			response.sendRedirect(dest != null ? (String)dest:"/");
		}
		log.info("8.postHandle......END");
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("1.preHandle");
		HttpSession session =request.getSession(); 
		log.info("2.session:");
		log.info(""+session);
		if(session.getAttribute(LOGIN)!=null) {
			log.info("clear login data before");
			session.removeAttribute(LOGIN);
		}
		log.info("3.preHandle...........END");
		return true ; 
	} 

	

}
