package com.spring.shopping.dao;

import com.spring.shopping.dto.BoardDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BoardDao {

  @Autowired
  private SqlSessionTemplate sqlSessionTemplate;

  private String nameSpace = "mapper.board";

  public List<Map<String, BoardDto>> getBoardList(Map boardList) {

    return sqlSessionTemplate.selectList(nameSpace + ".boardList", boardList);
  }

  public String adminCheck(String id) {

    return sqlSessionTemplate.selectOne(nameSpace + ".adminLevel", id);
  }

  public int boardWrite(Map map) {

    return sqlSessionTemplate.insert(nameSpace + ".boardWrite", map);
  }

  public List<Map<String, Object>> getJsonBoard() {

    return sqlSessionTemplate.selectList(nameSpace + ".jsonBoard");
  }

  public int totalCount() {

    return sqlSessionTemplate.selectOne(nameSpace + ".totalCount");
  }
}
