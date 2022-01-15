package dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.Administrator;
import bean.Prescription;
import bean.Prescription_drug;
import bean.Registration_record;



public class Prescription_dao_impl implements Prescription_dao {


	public String get_max_p_id() throws IOException {
		
			String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   System.out.println("dao_dao_dao");
		
			
		   	int max_p_id = session.selectOne("get_max_p_id");
		   	String max_p_id_s = String.valueOf(max_p_id);
			session.commit();
			session.close();

		
		return max_p_id_s;
	}

	@Override
	public void addPrescription(Prescription prescription) throws IOException {
			String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   System.out.println("wowowowowow");
		   
			System.out.println(prescription.getPrescription_id());
		
			
			session.insert("addPrescription",prescription);
			session.commit();
			session.close();
		
	}

	@Override
	public Prescription getPrescription(String medical_record_id) throws IOException {
		   String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   System.out.println("p dao");
		   Prescription p = session.selectOne("getPrescription_by_m_r_id", medical_record_id);
		   System.out.println("p_dao  "+p.getPrescription_name());
		   session.commit(); 
			session.close();
			return p;
	}

	@Override
	public List<Prescription_drug> getPrescription_drug_by_p_id(String prescription_id) throws IOException {
		   String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();   
	        List<Prescription_drug> prescription_drugs = session.selectList("listPrescription_drugs_by_p_id",prescription_id);
	        session.commit(); 
			session.close();	
	        return prescription_drugs;
	}

	@Override
	public void change_prescription_pay_state(String medical_record_id1) throws IOException {
			String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   
		   session.update("change_prescription_pay_state",medical_record_id1);
		   session.commit(); 
		   session.close();
		   
		
	}

	@Override
	public List<Prescription> getPrescription_templates() throws IOException {
		String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   
	        List<Prescription> prescription_templates = session.selectList("getPrescription_templates");
//	     
	        session.commit(); 
			session.close();
			
	        return prescription_templates;
		
	}
	
		
		
}
