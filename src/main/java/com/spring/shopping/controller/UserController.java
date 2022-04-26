package com.spring.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

  @GetMapping("/join")
  public String getJoin() {
    return "/user/join";
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
}
