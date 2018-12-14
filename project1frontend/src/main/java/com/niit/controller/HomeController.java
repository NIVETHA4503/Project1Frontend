package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController{
	
	@RequestMapping("/home")
	public String homepage()
	{
		return "homepage";
	}
	@RequestMapping("/aboutus")
	public String aboutuspage()
	{
		return "aboutuspage";
	}
	
	
	
}

