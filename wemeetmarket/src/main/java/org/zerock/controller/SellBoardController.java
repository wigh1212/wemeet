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
	public void uploadsell(Model model) {

	}
	
	@GetMapping("/delete")
	public String delete(SellboardVO sellboard, Criteria cri) {
		
		service.delete(sellboard.getSno());
		
		return "redirect:/seller/sellboardlist?pageNum="+cri.getPageNum();
	}
	
	@PostMapping("/upload")
	public String upload(SellboardVO sellboard,MultipartHttpServletRequest request1) {
		
		try {
		//		HttpServletRequest request,
			System.out.println(request1.getFile("sthumb1").getOriginalFilename());
			
			
		 if(request1.getFile("sthumb1").getOriginalFilename()!=null) {
		 MultipartFile file = request1.getFile("sthumb1");
		 String sthumb=up.uploadFileName(file);
		 sthumb=up.fileUpload(file, sthumb);					  // 썸네일 이미지를 , 경로에다 저장
		 sellboard.setSthumb(sthumb);
		 sthumb=sthumb.replace("C:\\Lecture\\final\\wemeet\\wemeetmarket\\src\\main\\webapp\\resources\\img\\","");
		 }
		 
		 if(request1.getFile("simage1").getOriginalFilename()!=null) {
		 
		 MultipartFile file1 = request1.getFile("simage1");
		 String simage=up.uploadFileName(file1);			  // 경로 붙여서 리턴
		 simage=up.fileUpload(file1, simage);					  // 이미지를, 경로에다 저장
		 simage=simage.replace("C:\\Lecture\\final\\wemeet\\wemeetmarket\\src\\main\\webapp\\resources\\img\\", "");
		 sellboard.setSimage(simage);
		 
		 }
		
		 // 경로 붙여서 리턴
		sellboard.setScontent(sellboard.getScontent().replace("\r\n","<br>"));

	    service.insert(sellboard);
	    
	    		
	    Thread.sleep(6000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/seller/sellboardlist?pageNum=1&amaount=10";
	}
	
	
	@GetMapping("/selectone")
	public void selectone(Criteria cri, @RequestParam("sno")long sno,Model model) {
		
		  SellboardVO sellboard = service.read(sno);
		  model.addAttribute("sellboard",sellboard);
		  model.addAttribute("cri", cri);
		  
	}

	@GetMapping("/modifysell")
	public void modifysell(@RequestParam("sno") long sno,Model model) {
		
		model.addAttribute("sellboard",service.read(sno));
		
	}
	@PostMapping("/update")
	public String modify(SellboardVO sellboard, RedirectAttributes rttr,MultipartHttpServletRequest request1 ) {
		System.out.println(sellboard);
		
		try {
			//		HttpServletRequest request,
		
		
		
			 MultipartFile file = request1.getFile("sthumb1");
			 MultipartFile file1 = request1.getFile("simage1");
			 
			 
			String sthumb=up.uploadFileName(file);            // 경로 붙여서 리턴
			String simage=up.uploadFileName(file1);			  // 경로 붙여서 리턴
		
			sthumb=up.fileUpload(file, sthumb);					  // 썸네일 이미지를 , 경로에다 저장
			
			simage=up.fileUpload(file1, simage);					  // 이미지를, 경로에다 저장
			 
			sthumb=sthumb.replace("C:\\Lecture\\final\\wemeet\\wemeetmarket\\src\\main\\webapp\\resources\\img\\","");
			
			simage=simage.replace("C:\\Lecture\\final\\wemeet\\wemeetmarket\\src\\main\\webapp\\resources\\img\\", "");
			
			sellboard.setSthumb(sthumb);
			sellboard.setSimage(simage);
			
			System.out.println(sellboard.toString());
			
			sellboard.setScontent(sellboard.getScontent().replace("\r\n","<br>"));
			
			service.update(sellboard);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		if (service.modify(sellboard)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/seller/sellboardlist";
	}
	
	@GetMapping("/sellboardlist")
	public void sellboardlist(Criteria cri, Model model) {
		
		model.addAttribute("sellboardlist", service.getlist(cri));
		
		 int total = service.getTotal(cri);
		 model.addAttribute("total",total);
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
