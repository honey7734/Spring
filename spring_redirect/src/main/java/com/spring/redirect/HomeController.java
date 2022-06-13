package com.spring.redirect;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/redirect")
	public String redirect(HttpServletRequest request, RedirectAttributes rttr) {
		String url = "redirect:/target";
		
		rttr.addAttribute("data", request.getParameter("data"));
		
		//request.setAttribute("data", request.getParameter("data"));
		
		rttr.addFlashAttribute("data", request.getParameter("data"));
		
		return url;
	}

	
	@RequestMapping(value = "/target")
	public String target(HttpServletRequest request, Model model) {
		String url = "final";
		
		System.out.println("requset : " + request.getAttribute("data"));
		System.out.println("model : " + model.asMap().get("data"));
		
		return url;
	}
}
