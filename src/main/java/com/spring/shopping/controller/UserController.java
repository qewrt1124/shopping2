package com.spring.shopping.controller;

import com.spring.shopping.dto.MemberDto;
import com.spring.shopping.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
    return "/main/index";
  }

//  @GetMapping("json/user/userData")
//  public List getUserData() {
//
//    return
//  }

  /*주소찾기 팝업*/
  @GetMapping("/jusoPopup")
  public String getJusoPopup() {
    return "/user/jusoPopup";
  }

  @GetMapping("/login")
  public String getLogin() {
    return "/user/login";
  }

//  @GetMapping("/json/user")
//  @ResponseBody
//  public List<Map<String, Object>> jsonUser() {
//
//  }
}
