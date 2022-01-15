package service;

import dao.Category_dao;
import dao.Category_dao_impl;

public class Category_service_impl implements Category_service {

	private Category_dao category_dao = new Category_dao_impl();
	

	public void findAll() {
	        System.out.println("service查询了所有ca");
	        category_dao.findAll();
	    }
	

	
}
