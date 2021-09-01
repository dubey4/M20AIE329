package com.vivek.M20AIE329.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vivek.M20AIE329.model.Car;
import com.vivek.M20AIE329.service.CarService;

@RestController
public class TestController {
	
	@Autowired
	CarService carService;
	
	@GetMapping("/test")
	public List<Car> getCars(){
		return carService.getCars();
	}

}
