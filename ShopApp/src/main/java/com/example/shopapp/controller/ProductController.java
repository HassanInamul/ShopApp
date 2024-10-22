package com.example.shopapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.shopapp.model.Product;
import com.example.shopapp.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService service;
	
	@GetMapping({"/","home"})
	public String home() {
		System.out.println("Home Method called");
		return "home";
	}
	@GetMapping("addproduct")
	public String addProduct() {
		return "addproduct";
	}
	@PostMapping("handleForm")
	public String handleForm(Product product) {
		service.addProduct(product);
		return "success";
	}
	@GetMapping("viewallproducts")
	public String viewAllJobs(Model m) {
		List<Product> products= service.getAllProduct();
		System.out.println(products);
		m.addAttribute("productList", products);
		return "viewallproducts";
	}
}
