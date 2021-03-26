package com.mptn.eshop.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mptn.eshop.entitty.Product;
	
@Repository("productRepository")
public interface ProductRepository extends CrudRepository<Product, Integer> {

	@Query(value = "SELECT * FROM product t WHERE t.name = ?1", nativeQuery = true)
	public Product findByName(String name);
}

