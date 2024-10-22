package com.example.shopapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.shopapp.model.Product;
import com.example.shopapp.repo.ProductRepo;
@Service
public class ProductService {
	@Autowired
	private ProductRepo repo;

	public void addProduct(Product product) {
		repo.addProduct(product);
	}

	public List<Product> getAllProduct() {
		
		return repo.getAllProduct();
	}

}
