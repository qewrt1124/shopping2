package com.spring.shopping.dao;

import com.spring.shopping.dto.MemberDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

  @Autowired
  private SqlSessionTemplate sqlSessionTemplate;

  private String nameSpace = "mapper.user";

  public int join(MemberDto memberDto) {

    return sqlSessionTemplate.insert(nameSpace + ".join", memberDto);
  }
}
