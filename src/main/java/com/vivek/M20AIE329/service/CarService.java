package com.vivek.M20AIE329.service;

import java.util.ArrayList;
import java.util.List;
import java.util.OptionalInt;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.vivek.M20AIE329.model.Car;

@Service
public class CarService {

	private List<Car> cars=new ArrayList<>();
	
	public List<Car> getCars(){
		if(cars.isEmpty()) {
			createCarList();
		}
		return cars;
	}
	public void insertCar(HttpServletRequest request) {
		OptionalInt max = cars.stream().mapToInt(c->c.getId()).max();
		int id=1;
		if(max.isPresent())
			id=max.getAsInt();
		cars.add(new Car(++id,request.getParameter("name") ,request.getParameter("desc")));
	}
	
	public void deleteCar(HttpServletRequest request) {
		int id=Integer.valueOf(request.getParameter("id"));
		cars=cars.stream().filter(c->c.getId()!=id).collect(Collectors.toList());
	}
	
	public void updateCar(HttpServletRequest request) {
		deleteCar(request);
		int id=Integer.valueOf(request.getParameter("id"));
		cars.add(new Car(id,request.getParameter("name") ,request.getParameter("desc")));
	}
	
	public Car getCarById(HttpServletRequest request) {
		int id=Integer.valueOf(request.getParameter("id"));
		return cars.stream().filter(c->c.getId()==id).findFirst().get();
	}
	
	private void createCarList(){
		cars.add(new Car(1, "Maruti Swift", "The Average of Car is very good"));
		cars.add(new Car(2, "Tata Nexon", "The Car is good for highway"));
		cars.add(new Car(3, "Maruti Ertiga", "The Car is good for 6 peoople"));
		cars.add(new Car(4, "Tata Safari", "The Car has big sunroof"));
	}
}
