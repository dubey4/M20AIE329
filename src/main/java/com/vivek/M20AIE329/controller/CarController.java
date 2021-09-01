package com.vivek.M20AIE329.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vivek.M20AIE329.service.CarService;

@Controller
public class CarController {
	
	@Autowired
	CarService carService;
	
	@RequestMapping(value="/")
	public String getDefaultPage(Model model) {
		model.addAttribute("cars", carService.getCars());
		return "viewcars";
	}

	@RequestMapping(value="/cars")
	public String getCars(Model model) {
		model.addAttribute("cars", carService.getCars());
		return "viewcars";
	}
	
	@RequestMapping(value="/insertcarv")
	public String insertCarView() {
		return "insertcar";
	}
	
	@PostMapping(value="/insertcar")
	public String insertCar(HttpServletRequest request,Model model) {
		carService.insertCar(request);
		model.addAttribute("msg", "Car inserted successfully");
		return "insertcar";
	}
	
	@RequestMapping(value="/deletecar")
	public String deleteCar(HttpServletRequest request,Model model) {
		carService.deleteCar(request);
		model.addAttribute("cars",  carService.getCars());
		return "viewcars";
	}
	
	@PostMapping(value="/updatecar")
	public String updateCar(HttpServletRequest request,Model model) {
		carService.updateCar(request);
		model.addAttribute("msg", "Car updated successfully");
		return "updatecar";
	}
	
	@RequestMapping(value="/updatecarv")
	public String updateCarView(HttpServletRequest request,Model model) {
		model.addAttribute("car", carService.getCarById(request));
		return "updatecar";
	}
}
