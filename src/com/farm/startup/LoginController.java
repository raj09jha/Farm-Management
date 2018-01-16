package com.farm.startup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginController implements Controller
{

	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String u=req.getParameter("u");
		String p=req.getParameter("p");
		HttpSession s=req.getSession();
		Validate v=new Validate();
		v.isValid(u, p);
		if(v.isValid(u, p))
		{
			s.setAttribute("username", u);
			return new ModelAndView("Home");
		}
		else
		{
			return new ModelAndView("Index");
		}
		
	}

}
