package com.spring.shopping.service;

import com.spring.shopping.dao.UserDao;
import com.spring.shopping.dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

  @Autowired
  private UserDao userDao;

  /*회원가입*/
  @Override
  public int join(MemberDto memberDto) {
    String address = memberDto.getRoadAddrPart1() + " " + memberDto.getAddrDetail() + " " + memberDto.getRoadAddrPart2();

    memberDto.setAddress(address);

    int result = userDao.join(memberDto);

    return result;
  }

  /*userData api*/
  @Override
  public List<Map<String, Object>> userInfo() {

    return userDao.userInfo();
  }

  /*로그인*/
  @Override
  public String loginCheck(MemberDto memberDto, HttpSession session) {
    String userId = userDao.loginCheck(memberDto);
    String message;

    if (userId == null) {
      message = "fail";
    } else {
      message = "success";
      session.setAttribute("userId", userId);
      System.out.println("데이터 가져옴");
    }
    System.out.println(session.getAttribute("userId"));

    return message;
  }

  /*로그아웃*/
  @Override
  public String logout(HttpSession session, HttpServletRequest request) {
    session.invalidate();
    String header = request.getHeader("requestUrl");
    String requestUrl;
    if (header == null) {
      requestUrl = "redirect:/";
    } else {
      requestUrl = "redirect:" + header;
    }

    return requestUrl;
  }
}
