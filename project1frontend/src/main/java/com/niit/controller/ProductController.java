package com.niit.controller;


import java.util.List;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ProductDao;
import com.niit.models.Product;
@Controller
public class ProductController {
	@Autowired
	private ProductDao productDao;
	public ProductController() {
		System.out.println("ProductController bean is created");
	}
@RequestMapping(value="/all/getallproducts")
public String getAllProducts(Model model) {
	List<Product> products=productDao.getAllProducts();
	System.out.println(products);
	model.addAttribute("products",products);
	return "Productlist";
}
@RequestMapping(value="/all/getproduct")
public String getProduct(@RequestParam int id, Model model) {
	Product product=productDao.getProduct(id);
	model.addAttribute("productAttr",product);
	return "viewproduct";
	}
@RequestMapping(value="/admin/deleteproduct")
public String deleteProduct(@RequestParam int id,Model model) {
	productDao.deleteProduct(id);
	return"redirect:/all/getallproducts";
}
@RequestMapping(value="/admin/getproductform")
public String getProductform(Model model) {
	Product p=new Product();
	model.addAttribute("product", p);
	return "productform";
}
@RequestMapping(value="/admin/addproduct")
public String addProduct(@ModelAttribute Product product) {
	productDao.saveOrUpdate(product);
	return "redirect:/all/getallproducts";
	}
@RequestMapping (value="/admin/getupdateform")
public String getupdateform(@RequestParam int id, Model model) {
	Product product=productDao.getProduct(id);
	model.addAttribute ("Product",product);
	return "updateproductform";
	}
@RequestMapping (value="/admin/updateproduct")
public String updateproduct(@ModelAttribute Product product) {
	productDao.saveOrUpdate(product);
	return"redirect:/all/getallproducts";
	
}



}