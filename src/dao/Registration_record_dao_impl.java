package dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import bean.Administrator;
import bean.Registration_record;

public class Registration_record_dao_impl implements Registration_record_dao{

	@Override
	public void add(Registration_record registration_record) throws IOException {
	
		
	  	String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   System.out.println("daole");
		   
			System.out.println(registration_record.getRegistration_record_id());
			System.out.println(registration_record.getMedical_record_id());
			System.out.println(registration_record.getMorning_afternoon());
			System.out.println(registration_record.getP_gender());
			System.out.println(registration_record.getNow_date());
			System.out.println(registration_record.getP_birth());
			System.out.println(registration_record.getDelete_mark());
			System.out.println(registration_record.getDiagnose_state());
			System.out.println(registration_record.getDoc_name());
			System.out.println(registration_record.getIdentityNumber());
			System.out.println(registration_record.getNeed_medical_record_book());
			System.out.println(registration_record.getP_address());
			System.out.println(registration_record.getP_name());
			System.out.println(registration_record.getPay_type());
			System.out.println(registration_record.getRegistration_level());
			System.out.println(registration_record.getDept_name());
			System.out.println(registration_record.getP_age());
//			
//			registration_record.setRegistration_record_id("3");
//			System.out.println(registration_record.getRegistration_record_id());
//			Registration_record r = session.selectOne("getRegistration_record", registration_record.getRegistration_record_id());
//			System.out.println("sfz"+r.getIdentityNumber());
//			session.delete("deleteRegistration_record",registration_record);
//			System.out.println("hah");
//			registration_record.setRegistration_record_id("2");
			session.insert("addRegistration_record",registration_record);
			session.commit();
			session.close();
		
	}
	
	
	 public List<Registration_record> listAll() throws IOException {
		 
			String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   
	        List<Registration_record> registration_records = session.selectList("listRegistration_record");
//	        for (Category c : registration_records) {
//	            System.out.println(c.getName());
//	        }
	        return registration_records;
	    }

	 public void updateRegistration_record_diagnose_state_by_m_r_id(String m_r_id) throws IOException {
		 	String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		 
		   System.out.println("rrrdao");
		   session.update("updateRegistration_record_diagnose_state_by_m_r_id",m_r_id);
		   
			session.commit();
			session.close();
		 
	 }
}
