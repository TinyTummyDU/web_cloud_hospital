package dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.Bill;

public class Bill_dao_impl implements Bill_dao{

	@Override
	public void add_bill(Bill bill) throws IOException {
		   String resource = "mybatis-config.xml";
		   InputStream inputStream = Resources.getResourceAsStream(resource);
		   SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		   SqlSession session=sqlSessionFactory.openSession();
		   System.out.println("bill_dao");
		   
			System.out.println(bill.getAmount_of_money());

			session.insert("addBill",bill);
			session.commit();
			session.close();
		
	}

	
}
