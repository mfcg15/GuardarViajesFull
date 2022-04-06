package com.example.demo.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.example.demo.modelos.Gasto;
import com.example.demo.repositorios.RepositorioGastos;

@Service
public class ServicioGastos 
{
	private final RepositorioGastos repositorioGastos;

	public ServicioGastos(RepositorioGastos repositorioGastos) 
	{
		this.repositorioGastos = repositorioGastos;
	}
	
	public Gasto save_expense(Gasto expense)
	{
		return repositorioGastos.save(expense);
	}
	
	public List<Gasto> get_all()
	{
		return repositorioGastos.findAll();
	}
	
	 public Gasto findExpense(Long id) 
	 {
		 Optional<Gasto> optionalExpense = repositorioGastos.findById(id);
	        
	     if(optionalExpense.isPresent()) 
	     {
	    	 return optionalExpense.get();
	     } 
	     else 
	     {
	    	 return null;
	     }
	 }
	 
	 public Gasto updateExpense(Gasto expense, Long id)
	 {
		 Gasto g = repositorioGastos.findById(id).get();
		 g.setName(expense.getName());
		 g.setVendor(expense.getVendor());
		 g.setAmount(expense.getAmount());
		 g.setDescription(expense.getDescription());
		 return repositorioGastos.save(g);
	 }
	 
	 public void delete_expense(Long id)
	 {
		 repositorioGastos.deleteById(id);
	 }
	
}
