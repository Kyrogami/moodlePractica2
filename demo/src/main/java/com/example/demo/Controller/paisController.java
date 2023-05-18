package com.example.demo.Controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Pais;
import com.example.demo.repository.paisRepository;

@RestController
@RequestMapping("/api")

public class paisController {
	
	@Autowired
	private paisRepository repository;
	
	
	@GetMapping("/pais")
	public List<Pais> allPaises(){
		return repository.findAll();
	}
	
	@GetMapping("/pais/{name}")
	public List<Pais> findByName(@PathVariable("name") String name) {
		return repository.findByName(name);
	}
	
	@PostMapping("/pais")
	public Pais createpais(@RequestBody Pais pais) {
		return repository.save(pais);
	}
	
	@PutMapping("/pais/{id}")
	public Pais updatepais(@PathVariable int id ,@RequestBody Pais pais) {
		return repository.save(pais);
	}
	
	@DeleteMapping("/pais/{id}")
	public void deletepais(@PathVariable("id") Long id) {
		repository.deleteById(id);
	}
}




