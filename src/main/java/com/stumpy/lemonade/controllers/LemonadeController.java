package com.stumpy.lemonade.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import com.stumpy.lemonade.data.LemonadeDao;

public class LemonadeController {
	@Autowired
	private LemonadeDao dao;
}
