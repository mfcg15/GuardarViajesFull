package com.example.demo.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.modelos.Gasto;

@Repository
public interface RepositorioGastos extends CrudRepository<Gasto,Long>
{
	List<Gasto> findAll();
	List<Gasto> findById(long id);	
	void deleteById(Long id);
}
