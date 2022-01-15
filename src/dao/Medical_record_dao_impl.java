package dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.Medical_record;
import bean.Registration_record;

public class Medical_record_dao_impl implements Medical_record_dao{

	public void add(Medical_record medical_record) throws IOException {
		
		String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   System.out.println("m_r_dao");
		   
			System.out.println(medical_record.getMedical_record_id());
//			System.out.println(registration_record.getMedical_record_id());
//			System.out.println(registration_record.getMorning_afternoon());
//			System.out.println(registration_record.getP_gender());
//			System.out.println(registration_record.getNow_date());
//			System.out.println(registration_record.getP_birth());
//			System.out.println(registration_record.getDelete_mark());
//			System.out.println(registration_record.getDiagnose_state());
//			System.out.println(registration_record.getDoc_name());
//			System.out.println(registration_record.getIdentityNumber());
//			System.out.println(registration_record.getNeed_medical_record_book());
//			System.out.println(registration_record.getP_address());
//			System.out.println(registration_record.getP_name());
//			System.out.println(registration_record.getPay_type());
//			System.out.println(registration_record.getRegistration_level());
//			System.out.println(registration_record.getDept_name());
		
			
			session.insert("addMedical_record",medical_record);
			session.commit();
			session.close();
	}
	

}
