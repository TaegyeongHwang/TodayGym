package com.project.todaygym;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.todaygym.dto.CartDto;
import com.project.todaygym.service.ProductService;

@Controller
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ProductService pServ;
	private ModelAndView mv;
	
	//1. 구매메인페이지
	@GetMapping("product")
	public ModelAndView productMove() {
		logger.info("productMove()");
		mv = pServ.getProductList();
		return mv;
	}
	//2. 구매상세페이지
	@GetMapping("detail")
	public ModelAndView getProductDetail(String p_code) {
		logger.info("getProductDetail()");
		mv = pServ.getProductDetail(p_code);
		return mv;
	}
	//3. 장바구니 페이지
	@GetMapping("myCart")
	public ModelAndView getMyCart() {
		logger.info("getMyCart()");
		mv = pServ.getMyCart();
		return mv;
	}
	//4. 장바구니 저장하기
	@GetMapping("saveCart")
	public String saveMyCart(CartDto myCart, RedirectAttributes rttr) {
		logger.info("saveMyCart()");
		
		String view = pServ.saveMyCart(myCart, rttr);
		return view;
	}
	
}




























