package com.example.demo.controladores;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.modelos.Gasto;
import com.example.demo.servicios.ServicioGastos;

@Controller
public class ControladorGastos 
{
	private final ServicioGastos servicioGastos;

	public ControladorGastos(ServicioGastos servicioGastos) 
	{
		
		this.servicioGastos = servicioGastos;
	}
	
	@RequestMapping(value="/expenses", method=RequestMethod.GET)
	public String register (@ModelAttribute("gasto") Gasto gasto, Model model)
	{
		
		List<Gasto> gastos = servicioGastos.get_all();
		
		model.addAttribute("gastos",gastos);
		
		return "index.jsp";
	}
	
	@RequestMapping("/expenses/{id}")
	public String show (Model model,@PathVariable("id") Long id)
	{
		Gasto gasto = servicioGastos.findExpense(id);
		
		model.addAttribute("name",gasto.getName());
		model.addAttribute("description",gasto.getDescription());
		model.addAttribute("vendor",gasto.getVendor());
		model.addAttribute("amount",gasto.getAmount());
		
		return "show.jsp";
	}
	
	@RequestMapping(value="/expenses/edit/{id}", method=RequestMethod.GET)
	public String editar (@PathVariable("id") Long id, Model model)
	{
		
		Gasto expense = servicioGastos.findExpense(id);
		
		model.addAttribute("gasto",expense);
		return "editar.jsp";
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	public String eliminaGasto (@PathVariable("id") Long id)
	{
		servicioGastos.delete_expense(id);
		return "redirect:/expenses";
	}
	
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("gasto") Gasto gasto,
						 BindingResult result)
	{
		
		if(result.hasErrors())
		{
			return "index.jsp";
		}
		else
		{
			servicioGastos.save_expense(gasto);
			return "redirect:/expenses";
		}
	
	}
	
	@PutMapping("/updated/{id}")
    public String update(@PathVariable("id") Long id,@Valid @ModelAttribute("gasto") Gasto gasto, BindingResult result) {
        if (result.hasErrors()) 
        {
            return "editar.jsp";
        } 
        else 
        {
            servicioGastos.updateExpense(gasto,id);
            return "redirect:/expenses";
        }
    }
	
}
