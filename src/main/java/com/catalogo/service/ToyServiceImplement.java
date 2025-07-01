package com.catalogo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.catalogo.model.Toy;
import com.catalogo.repository.ToyRepository;

@Service
	public class ToyServiceImplement implements ToyService {

	    @Autowired
	    private ToyRepository toyRepository;

	    @Override
	    public List<Toy> getAllToys() {
	        return toyRepository.findAll();
	    }

	    @Override
	    public void saveToy(Toy toy) {
	        toyRepository.save(toy);
	    }

	    @Override
	    public Toy getToyById(String idToy) {
	        Optional<Toy> optional = toyRepository.findById(idToy);
	        return optional.orElse(null);
	    }

	    @Override
	    public void deleteToyById(String idToy) {
	        toyRepository.deleteById(idToy);
	    }
	    
	    @Override
	    public List<Toy> searchToys(String query) {
	        return toyRepository.findByNameContainingOrCategoryContaining(query, query);
	    }

	    @Override
	    public Page<Toy> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection) {
	        Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ?
	                Sort.by(sortField).ascending() : Sort.by(sortField).descending();

	        PageRequest pageable = PageRequest.of(pageNo - 1, pageSize, sort);
	        return toyRepository.findAll(pageable);
	    }

}
