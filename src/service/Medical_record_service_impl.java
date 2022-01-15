package service;

import java.io.IOException;

import bean.Medical_record;
import bean.Registration_record;
import dao.Medical_record_dao;
import dao.Medical_record_dao_impl;


public class Medical_record_service_impl implements Medical_record_service{

	Medical_record_dao  medical_record_dao = new Medical_record_dao_impl();
	
	@Override
	public void diagnose(Medical_record medical_record) throws IOException{
		medical_record.setDelete_mark("0");

		medical_record_dao.add(medical_record);
	}
	
}
