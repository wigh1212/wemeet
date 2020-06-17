package org.zerock.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.zerock.domain.ChatVO;
import org.zerock.service.ChattingService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping(value="/chat/*",produces="text/plain;charset=UTF-8")
@SessionAttributes("member")
public class ChattingController {
	
	private ChattingService service;
	
	
	@GetMapping("/chattingroom")
	public String chattingroom(ChatVO chat,Model model){
		
		System.out.println(chat.getCno());
		model.addAttribute("chatting", service.selectChat(chat));
		
		return "/chat/chattingroom";
	}
	
	@GetMapping("/chattinglist")
	public String chattinglist(Model model) {
	
		List<ChatVO> test=service.chattinglist();
		
		log.info(test.size());
		
		model.addAttribute("chattinglist",service.chattinglist());
		
		return "home";
	}
	
	@GetMapping("/deletechat")
	public String deletechat(ChatVO chat) {
		
		service.deletechat(chat);
		
		return "/chat/chattingroom";
	}
	
	@GetMapping("/addchat")
	public String chattingadd() {
		
		return "/chat/chattingadd";
	}
	
	@PostMapping("/addchat")
	public String addchat(ChatVO chat) {
		service.addchattingroom(chat);
		
		return "/chat/chattingroom";
		
	}

	@PostMapping("/updatechat")
	public String updatechat(ChatVO chat) {
		
		service.updatechat(chat);
		
		return "/chat/chattingroom";
	}
	
	
	@GetMapping("/waitingroom")
	public void waitingroom(Model model) {
		
		model.addAttribute("chattinglist",service.chattinglist());
		
		
	}
	
	
	
	
}
