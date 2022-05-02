package com.spring.shopping.dao;

import com.spring.shopping.dto.MemberDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class UserDao {

  @Autowired
  private SqlSessionTemplate sqlSessionTemplate;

  private String nameSpace = "mapper.user";

  public int join(MemberDto memberDto) {

    return sqlSessionTemplate.insert(nameSpace + ".join", memberDto);
  }

  /*user 정보 (json)*/
  public List<Map<String, Object>> userInfo() {

    return sqlSessionTemplate.selectList(nameSpace + ".userInfo");
  }

  public String loginCheck(MemberDto memberDto) {

    return sqlSessionTemplate.selectOne(nameSpace + ".loginCheck", memberDto);
  }
}
