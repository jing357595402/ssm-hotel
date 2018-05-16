package com.ssm.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MybatisConfig {
     
	
	private static SqlSessionFactory sqlSessionFactory;
	
	
    static{
    	try {
			InputStream is = Resources.getResourceAsStream("mybatis.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
    }
	
    
    public static SqlSession getSqlSession()
    {
		return sqlSessionFactory.openSession();	
    }
    
    
    public static void close(SqlSession sqlSession)
    {
    	sqlSession.close();
    }
	
}









