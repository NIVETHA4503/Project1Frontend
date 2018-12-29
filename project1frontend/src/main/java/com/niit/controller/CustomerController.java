package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CustomerDao;
import com.niit.models.Customer;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDao customerDao;
	@RequestMapping(value="/all/getregistrationform")
	public String getRegisterationForm(Model model) {
		Customer customer=new Customer();
		model.addAttribute("Customer",customer);
		return "registrationform";
		}
	@RequestMapping(value="/all/register")
	public String registerCustomer(@ModelAttribute Customer customer) {
		customerDao.registerCustomer(customer);
	return "login";
}
}