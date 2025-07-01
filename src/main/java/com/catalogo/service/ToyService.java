package com.catalogo.service;

import java.util.List;

import org.springframework.data.domain.Page;

import com.catalogo.model.Toy;

public interface ToyService {
    List<Toy> getAllToys();
    void saveToy(Toy toy);
    Toy getToyById(String idToy);
    void deleteToyById(String idToy);
    Page<Toy> findPaginated(int pageNo, int pageSize, String sortField, String sortDirection);
	List<Toy> searchToys(String query);
}