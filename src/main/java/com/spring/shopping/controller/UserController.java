package com.spring.shopping.controller;

import com.spring.shopping.dto.MemberDto;
import com.spring.shopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

  @Autowired
  private UserService userService;

  /*회원가입*/
  @GetMapping("/join")
  public String getJoin() {
    return "/user/join";
  }

  @PostMapping("/join")
  public String postJoin(MemberDto memberDto, Model model) {

    int result = userService.join(memberDto);

    if (result != 1) {
      return "redirect:/join";
    }
    return "redirect:/";
  }

  /*주소찾기 팝업*/
  @GetMapping("/jusoPopup")
  public String getJusoPopup() {
    return "/user/jusoPopup";
  }

  @GetMapping("/login")
  public String getLogin() {
    return "/user/login";
  }

  @GetMapping("/json/userData")
  @ResponseBody
  public List<Map<String, Object>> jsonUser() {

    return userService.userInfo();
  }

  /*로그인체크*/
  @PostMapping("/loginCheck")
  @ResponseBody
  public String loginCheck(@RequestBody MemberDto memberDto, HttpSession session) {
    String result = userService.loginCheck(memberDto, session);

    return result;
  }

  /*로그아웃*/
  @GetMapping("/logout")
  public String logout(HttpSession session, HttpServletRequest request) {
    String page = userService.logout(session, request);

    return page;
  }
}
