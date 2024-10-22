package com.example.shopapp.repo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.shopapp.model.Product;


@Repository
public class ProductRepo {
	
	List<Product> products = new ArrayList<> (Arrays.asList(
			new Product(1, "Vaccum Cleaner", "Used to clean Houses", 5000, 20),
			new Product(2, "TV", "Used to watch Fav Shows", 12000, 30),
			new Product(3, "Refrigirator", "Used to keep food safe", 25000, 15),
			new Product(4, "Oven", "Used to cook fast", 2500, 45)
			));

	public void addProduct(Product product) {
		products.add(product);
		//System.out.println(products);
	}

	public List<Product> getAllProduct() {
		return products;
	}

}
