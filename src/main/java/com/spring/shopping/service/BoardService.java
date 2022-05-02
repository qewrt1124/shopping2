package com.spring.shopping.service;

import com.spring.shopping.dto.BoardDto;
import com.spring.shopping.vo.PagingVo;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

public interface BoardService {

  public void getBoardList(Model model, PagingVo pagingVo, String category, String nowPage, int viewCount);

  public void adminCheck(Model model, HttpSession session);

  public String boardWrite(BoardDto boardDto, HttpSession session);

  public List<Map<String, Object>> getJsonBoard();
}
