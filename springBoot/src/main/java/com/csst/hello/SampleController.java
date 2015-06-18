package com.csst.hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.csst.dao.UserDao;

@Controller
@RequestMapping("/hello")

public class SampleController {
	@Autowired
	UserDao dao;

    @RequestMapping("/")
    @ResponseBody
    String home() {
      
    	return dao.select()+"Hello World!";
    }

}
