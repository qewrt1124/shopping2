package com.spring.shopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

  @GetMapping("/boardList")
  public String getBoardList() {
    return "/board/board_list";
  }

  @GetMapping("/boardWrite")
  public String getBoardWrite() {
    return "/board/board_write";
  }

  @GetMapping("/boardContent")
  public String getBoardContent() {
    return "/board/board_content";
  }

  @GetMapping("/boardEdit")
  public String getBoardEdit() {
    return "/board/board_edit";
  }

}
