package com.spring.shopping.service;

import com.spring.shopping.dto.MemberDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public interface UserService {

  public int join(MemberDto memberDto);

  public List<Map<String, Object>> userInfo();

  public String loginCheck(MemberDto memberDto, HttpSession session);

  public String logout(HttpSession session, HttpServletRequest request);
}
