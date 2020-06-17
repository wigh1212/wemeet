package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.zerock.domain.Criteria;
import org.zerock.service.SellboardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@SessionAttributes("member")
public class HomeController {
	
	private SellboardService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Criteria cri,Model model) {
	
		
		
		if(("sell").equals(cri.getKeyword())) {
			
			return "redirect:/seller/selllist";
		}
		
		else if(("buy").equals(cri.getKeyword())){
			
			
			
			return "redirect:/buyer/buylist";
			
		}
		else if( ("chat").equals(cri.getKeyword())){
			
		
			
			return "redirect:/chat/chattinglist";

		}
		
		
		
		
		return "home";
		
	}
	
}
