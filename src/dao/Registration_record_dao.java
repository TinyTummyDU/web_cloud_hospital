package dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.Registration_record;

public interface Registration_record_dao {

	public void add(Registration_record registration_record) throws IOException;
	
	public List<Registration_record> listAll() throws IOException;
	
	public void updateRegistration_record_diagnose_state_by_m_r_id(String m_r_id) throws IOException ;
	
}
