package com.stumpy.lemonade.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Lemonadestand {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name="owner_id")
	private int ownerId;
	
	@Column
	private String name;
	
	@Column
	private double cash;

	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getCash() {
		return cash;
	}

	public void setCash(double cash) {
		this.cash = cash;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Lemonadestand [id=" + id + ", ownerId=" + ownerId + ", name=" + name + ", cash=" + cash + "]";
	} 
	
	
}
