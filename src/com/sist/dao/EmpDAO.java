package com.sist.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;
import java.util.List;

/**
 * Created by sist on 2016-03-29.
 */
public class EmpDAO {

    private static SqlSessionFactory sqlSessionFactory;
    static{
        try{
            Reader reader= Resources.getResourceAsReader("Config.xml");
            sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }

    public static List<EmpDTO> empAllData(){
        return sqlSessionFactory.openSession().selectList("empAllData");
    }
}






























