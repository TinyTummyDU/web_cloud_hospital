package dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.Drug;
import bean.Prescription_drug;

public class Drug_dao_impl implements Drug_dao{

	@Override
	public List<Drug> getDrugs() throws IOException {
		
		   String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   
	        List<Drug> drugs = session.selectList("getDrugs");
//	     
	        session.commit(); 
			session.close();
			
	        return drugs;
	}

	@Override
	public Drug get_drug_by_id(String drug_id) throws IOException {
		   String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   
	        Drug drug = session.selectOne("get_drug_by_id",drug_id);
//	     
	        session.commit(); 
			session.close();
			
	        return drug;
	}

}
