package org.hyuk.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;
@Log
public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	private void saveDest(HttpServletRequest req) {
		log.info("1.saveDest");
		String uri = req.getRequestURI(); 
		log.info("2.uri:"+uri);
		String query = req.getQueryString(); 
		log.info("3.query:"+query);
		if(query ==null|| query.equals(null)) {
			query = "" ; 
		}else {
			query ="?"+query ; 
		}
		
		if(req.getMethod().equals("GET")) {
			log.info("dest:"+(uri+query));
			req.getSession().setAttribute("dest",uri+query);
		}
	}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
			log.info("1.preHandle");
			HttpSession session =request.getSession(); 
			log.info("2.session:");
			log.info(""+session);
			if(session.getAttribute("login")== null) {
				log.info("current user is not loginde");
				log.info("3.request:"+request);
				saveDest(request);
				
				response.sendRedirect("/user/login");
				return false ; 
			}
			return true;
	}
	
}
