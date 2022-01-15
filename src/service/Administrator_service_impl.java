package service;

import java.io.IOException;

import bean.Administrator;
import dao.Administrator_dao;
import dao.Administrator_dao_impl;
import dao.Category_dao;
import dao.Category_dao_impl;

public class Administrator_service_impl implements Administrator_service{

	
	private Administrator_dao administrator_dao = new Administrator_dao_impl();
	
	
	public boolean login_check(Administrator administrator) throws IOException {
		
		Administrator dao_a = administrator_dao.login_check(administrator);
		System.out.println(administrator.getPassword());
		System.out.println(dao_a.getPassword());
		
		if(dao_a.getPassword().equals(administrator.getPassword())) {
			System.out.println("duile");
			return true;
		}else {
			return false;
			
		}
	}

	
	
}
