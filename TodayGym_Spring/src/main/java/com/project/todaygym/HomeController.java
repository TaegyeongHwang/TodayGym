package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/")
	public String home() {
		logger.info("home()");
		
		return "home";
	}
	// 구매메인화면이동
	@GetMapping("buyHome")
	public String buyHome() {
		logger.info("buyHome()");
		return "buy/buyHome";
	}
} // class end
