package org.zerock.controller;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.AdminBoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.domain.SellboardVO;
import org.zerock.domain.upload;
import org.zerock.service.SellboardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/seller/*",produces="text/plain;charset=UTF-8")
@AllArgsConstructor
@SessionAttributes({"member","mid"})
public class SellBoardController {
	
	private SellboardService service;
	private upload up;		
	@GetMapping("/uploadsell")
	public void uploadsell(@RequestParam("mid")String mid,Model model) {
		
		model.addAttribute("mid",mid);
		
	}
	
	@PostMapping("/upload")
	public String upload(HttpServletRequest request, SellboardVO sellboard,MultipartHttpServletRequest request1) {
		
		try {
		//		HttpServletRequest request,
	
		 String content="";
		 int i=0;
		 
		System.out.println(sellboard.toString());
		 MultipartFile file = request1.getFile("sthumb");
		 MultipartFile file1 = request1.getFile("simage");
		 
		 
		String sthumb=up.uploadFileName(file);            // 경로 붙여서 리턴
		String simage=up.uploadFileName(file1);			  // 경로 붙여서 리턴
	
		String ssthumb=up.fileUpload(file, sthumb);					  // 썸네일 이미지를 , 경로에다 저장
		
		String ssimage=up.fileUpload(file1, simage);					  // 이미지를, 경로에다 저장
		 
		ssthumb=ssthumb.replace("C:\\lacture\\final\\wemeetmarket\\src\\main\\webapp\\resources\\img\\","");
		
		simage=simage.replace("C:\\lacture\\final\\wemeetmarket\\src\\main\\webapp\\resources\\img\\", "");
		
		sellboard.setSsthumb(ssthumb);
		sellboard.setSsimage(simage);
		
		 
		do {
		 content +=(String)request.getParameter("scontent"+(i+1));
		 content +=":";
		 i++;

		}while(request.getParameter("scontent"+(i+1))!=null);

		sellboard.setScontent(content);

	    System.out.println(sellboard.toString());
	    service.insert(sellboard);
	    
	    		
	    Thread.sleep(6000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/";
	}
	
	
	@GetMapping("/selectone")
	public void selectone(@RequestParam("sno")long sno,Model model,@RequestParam("mid")String mid) {
		
		  SellboardVO sellboard = service.read(sno);
		  model.addAttribute("sellboard",sellboard);
	}
	
	@GetMapping({"/get","/modify"})
	public void get(@RequestParam("adno") Long sno, Model model, @ModelAttribute("cri") Criteria cri) {
		log.info("/get or /modify");
		model.addAttribute("adminboard",service.read(sno));
	}
	
	@PostMapping("/modify")
	public String modify(SellboardVO sellboard, RedirectAttributes rttr) {
		if(service.modify(sellboard)) {
			rttr.addFlashAttribute("result","success");
		}
		
		return "redirect:/seller/sellboardlist";
	}
	
	@GetMapping("/sellboardlist")
	public void sellboardlist(Criteria cri, Model model) {
		
		model.addAttribute("sellboardlist", service.getlist(cri));
		
		 int total = service.getTotal(cri);
		 
		 model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	
	@GetMapping("/category")
	public String category(@RequestParam("scategory")String category) {
		
		System.out.println(category);
		
		return "/seller/sellboardlist";
		
	}
	
	@PostMapping("/search")
	public String search(Criteria cri) {
		
		System.out.println(cri);
		
		return "/seller/category";
		
	}	
}
