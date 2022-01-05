package com.project.todaygym.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.todaygym.dto.MemberDto;

@Service
public class AdCheckIdService {
	private ModelAndView mv;
	private MemberDto mDto;

	public ModelAndView getAdCheckId(HttpServletRequest req) {

		HttpSession session = req.getSession();

		if(session != null) {
			mDto = (MemberDto) session.getAttribute("mb");
			String m_id = mDto.getM_id();
			
			mv = new ModelAndView();
			
			if(m_id.equals("admin")) {
				mv.addObject("m_id", m_id);
				mv.setViewName("admin/adMain");
			} else {
				mv.setViewName("admin/home");
			}
		} else {
			mv.setViewName("admin/home");
		}
		return mv;
	}
}
