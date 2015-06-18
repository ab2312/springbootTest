package com.csst.other;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.csst.hotelCrawler.dao.HotelCommentDao;

@Controller
@RequestMapping(value="/other")
public class OtherController {
	
	@Autowired
	private HotelCommentDao dao;
	
	@RequestMapping("/home")
	 public String  home() {
		List<String> queryExistHotelId = dao.queryExistHotelId();
		for (String string : queryExistHotelId) {
			//System.out.println(string);	
		}
		
		ModelAndView modelAndView = new ModelAndView("detail");
	      return "detail";
	}
}
