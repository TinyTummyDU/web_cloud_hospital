package service;

import java.io.IOException;
import java.util.List;

import bean.Registration_record;

public interface Registration_record_service {

	public void register(Registration_record registration_record) throws IOException;


	public List<Registration_record> find_registration_record_by_doc_name(String doc_name) throws IOException;

	public void updateRegistration_record_diagnose_state_by_m_r_id(String m_r_id) throws IOException ;

	

}
