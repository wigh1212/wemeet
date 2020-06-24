package org.zerock.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.zerock.domain.ChatVO;
import org.zerock.domain.upload;
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
	
	private upload up;		
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
	
	@PostMapping("/deletechat")
	@ResponseBody
	public int deletechat(ChatVO chat) {
		
		System.out.println("딜리트 접근");
		service.deletechat(chat);
		
		return 1;
	}
	
	@GetMapping("/addchat")
	public String chattingadd() {
		
		return "/chat/chattingadd";
	}
	
	@PostMapping("/addchat")
	public String addchat(ChatVO chat,MultipartHttpServletRequest request) {
		
		
		log.info(chat);
		
		MultipartFile file = request.getFile("cimage1");
		 
		 
		String cimage=up.uploadFileName(file);            // 경로 붙여서 리턴
	
		cimage=up.fileUpload(file, cimage);					  // 썸네일 이미지를 , 경로에다 저장
		
		 
	
		cimage=cimage.replace("C:\\Lecture\\final\\wemeet\\wemeetmarket\\src\\main\\webapp\\resources\\img\\", "");
		
		chat.setCimage(cimage);
		
		
		
		service.addchattingroom(chat);
		
		ChatVO room=service.create(chat);
		
		return "redirect:/chat/chattingroom?cno="+room.getCno();
		
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
