package com.spring.shopping.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {

  @Autowired
  private SqlSessionTemplate sqlSession;

  private static String nameSpace = "mapper.main";
}
