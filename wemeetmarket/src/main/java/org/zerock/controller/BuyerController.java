package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value="/buyer/*",produces="text/plain;charset=UTF-8")

@SessionAttributes({"member","adminboard"})
public class BuyerController {
	
	
	
	@GetMapping("/buyboardlist")
	public void buyboardlist() {
	
	}

}
