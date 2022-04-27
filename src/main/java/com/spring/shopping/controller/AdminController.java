package com.spring.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

  @GetMapping("/admin")
  public String getAdminMain() {
    return "admin/adminMain";
  }

  @GetMapping("/admin/productRegister")
  public String getProductRegister() {
    return "/admin/productRegister";
  }

  @GetMapping("/admin/productList")
  public String getProductList() {
    return "/admin/productList";
  }

  @GetMapping("/admin/productContent")
  public String getProductContent() {
    return "/admin/productContent";
  }
}
