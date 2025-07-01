package com.catalogo.repository;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.catalogo.model.Toy;

@Repository
public interface ToyRepository extends MongoRepository<Toy, String>{
	
	List<Toy> findByNameContainingOrCategoryContaining(String query, String query2);
}
