package com.spring.shopping.controller;

import com.spring.shopping.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class MainController {

  @Autowired
  private MainService mainService;

  @GetMapping("/")
  public String mainPage(HttpSession session) {

    System.out.println("userData : " + session.getAttribute("userData"));

    return "main/index";
  }
}
