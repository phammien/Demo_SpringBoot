package com.mptn.eshop.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mptn.eshop.entitty.Category;

@Repository("categoryRepository")
public interface CategoryRepository extends CrudRepository<Category, Integer> {

	@Query(value = "SELECT * FROM category t WHERE t.name = ?1", nativeQuery = true)
	public Category findByName(String name);
}
