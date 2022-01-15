package dao;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import bean.Administrator;

public class Administrator_dao_impl implements Administrator_dao {

	
	@Override
	public Administrator login_check(Administrator administrator) throws IOException {
		  	String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
//		   List<Administrator> cs = session.selectList("listAdministrator");
//		        for (Administrator c : cs) {
//		            System.out.println(c.getId());
//		        }
		   Administrator a = session.selectOne("getAdministrator", administrator.getId());
		   //通过session.selectOne获取对应id的记录
		   
			session.commit(); 
			session.close();
		   return a;
	}
	
	
	
}
