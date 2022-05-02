package com.spring.shopping.controller;

import com.spring.shopping.dto.BoardDto;
import com.spring.shopping.service.BoardService;
import com.spring.shopping.vo.PagingVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class BoardController {

  @Autowired
  private BoardService boardService;

  @GetMapping(value = {"/boardList/{category}/{nowPage}", "/boardList/{category}"})
  public String getBoardList(@PathVariable("category") String category,
                             @PathVariable(value = "nowPage", required = false) String nowPage,
                             String searchData,
                             PagingVo pagingVo, HttpSession session, Model model) {
    System.out.println("ControllerNowpage : " + pagingVo.getNowPage());
    int viewCount = 10;
    pagingVo.setViewCount(viewCount);
    boardService.getBoardList(model, pagingVo, category, nowPage, viewCount);
    boardService.adminCheck(model, session);

    return "/board/board_list";
  }

  /*글쓰기*/
  @GetMapping("/boardWrite")
  public String getBoardWrite() {
    return "/board/board_write";
  }

  @PostMapping("/boardWrite")
  public String postBoardWrite(BoardDto boardDto, HttpSession session) {
    boardService.boardWrite(boardDto, session);

    return "redirect:/boardList";
  }

  @GetMapping("/boardContent")
  public String getBoardContent() {
    return "/board/board_content";
  }

  @GetMapping("/boardEdit")
  public String getBoardEdit() {
    return "/board/board_edit";
  }

  @GetMapping("/json/board")
  @ResponseBody
  public List<Map<String, Object>> getJsonBoard() {

    return boardService.getJsonBoard();
  }
}
