package com.niit.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.ProductDao;
import com.niit.models.Category;
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


@RequestMapping(value="/admin/deleteproduct/{id}")
public String deleteProduct(@RequestParam int id,HttpServletRequest request) {
	Path paths=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+id+".png");
	if(Files.exists(paths))
		try {
			Files.delete(paths);
		} catch (IOException e) {

			e.printStackTrace();
		}
			productDao.deleteProduct(id);
return "redirect:/all/getallproducts";
}


@RequestMapping(value="/admin/getproductform")
public String getProductform(Model model) {
	Product p=new Product();
	model.addAttribute("product", p);
	List<Category> categories=productDao.getAllCategories();
	model.addAttribute("categories",categories);
	return "productform";
}


@RequestMapping(value="/admin/addproduct")
public String addProduct(@ModelAttribute @Valid Product product,BindingResult result,Model model,HttpServletRequest request) {
	if(result.hasErrors()) {
		model.addAttribute("categories",productDao.getAllCategories());
	return "productform";
	}
	productDao.saveOrUpdate(product);
	System.out.println(request.getServletContext().getRealPath("/"));
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getId()+".png");
	MultipartFile img=product.getImage();
	if(img!=null&&!img.isEmpty()) {
		File file=new File(path.toString());
		try {
			img.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	return "redirect:/all/getallproducts";
	}


@RequestMapping (value="/admin/getupdateform")
public String getupdateform(@RequestParam int id, Model model) {
	Product product=productDao.getProduct(id);
	model.addAttribute ("product",product);
	List<Category> categories=productDao.getAllCategories();
	model.addAttribute("categories",categories);
	return "updateproductform";
	}
@RequestMapping (value="/admin/updateproduct")
public String updateproduct(@ModelAttribute @Valid Product product,BindingResult result, Model model,HttpServletRequest request) {
	if(result.hasErrors()) {
		model.addAttribute("categories,productDao.getAl1Categories()");
		return "updateproductform";
	}
	System.out.println(request.getServletContext().getRealPath("/"));
	Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getId()+".png");
	MultipartFile img=product.getImage();
	if(img!=null&&!img.isEmpty()) {
		File file=new File(path.toString());
		try {
			img.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	productDao.saveOrUpdate(product);
	return "redirect:/all/getallproducts";
	
}
@RequestMapping("/all/searchbycategory")
public String searchByCategory(@RequestParam String searchCondition,Model model){
	if(searchCondition.equals("All"))
		model.addAttribute("searchCondition","");
	else
		model.addAttribute("searchCondition",searchCondition);
	List<Product> products=productDao.getAllProducts();
	model.addAttribute("products",products);
	return "Productlist";
}
}


