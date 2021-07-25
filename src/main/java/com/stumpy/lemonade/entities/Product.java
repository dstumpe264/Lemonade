package com.stumpy.lemonade.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Product {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column
	private String name;
	
	@Column
	private double price;
	
	@Column(name= "stand_id")
	private int standId;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStandId() {
		return standId;
	}

	public void setStandId(int standId) {
		this.standId = standId;
	}

	public int getId() {
		return id;
	}
	
	
}
