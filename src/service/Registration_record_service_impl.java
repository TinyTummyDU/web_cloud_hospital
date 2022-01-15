package service;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import bean.Registration_record;
import dao.Registration_record_dao;
import dao.Registration_record_dao_impl;

public class Registration_record_service_impl implements Registration_record_service{

	Registration_record_dao  registration_record_dao = new Registration_record_dao_impl();
	
	public void register(Registration_record registration_record) throws IOException {
		
		registration_record.setDelete_mark("0");
		registration_record.setDiagnose_state("未看诊");
		//添加 挂号页面 表单所不含有的数据 到 registration_record 对象

		
		registration_record_dao.add(registration_record);
	
	
	}
	
	
	@Override
	public List<Registration_record> find_registration_record_by_doc_name(String doc_name) throws IOException {
		
		List<Registration_record> registration_records = registration_record_dao.listAll();
		
		//以上是全部的挂号单
		//下面选择一名医生下的挂号单
		List<Registration_record> new_registration_records = new ArrayList<Registration_record>();
		for(int i = 0 ; i<registration_records.size();i++) {
			if(registration_records.get(i).getDoc_name().equals(doc_name)) {
				new_registration_records.add(registration_records.get(i));
			}
		}
		return new_registration_records;
	}
	
	 public void updateRegistration_record_diagnose_state_by_m_r_id(String m_r_id) throws IOException {
		 registration_record_dao.updateRegistration_record_diagnose_state_by_m_r_id(m_r_id);
	 }
}
