package com.spring.shopping.service;

import com.spring.shopping.dao.BoardDao;
import com.spring.shopping.dto.BoardDto;
import com.spring.shopping.vo.PagingVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {

  @Autowired
  private BoardDao boardDao;

  /*게시판 리스트*/
  @Override
  public void getBoardList(Model model, PagingVo pagingVo, String category, String nowPage, int viewCount) {
    if ((nowPage == null) || !((Integer.parseInt(nowPage)) >= 1)) {
      nowPage = "1";
      pagingVo.setNowPage(1);
    }
    int totalCount = pagingVo.getTotalCount();

    Map<String, Object> page = new HashMap<String, Object>();

    pagingVo.setStart(Integer.parseInt(nowPage), viewCount);
    pagingVo.setTotalCount(boardDao.totalCount());
    pagingVo.setTotalPages(totalCount, viewCount);
    pagingVo.setStartPage(Integer.parseInt(nowPage));

    page.put("pageVo", pagingVo);
    page.put("category", category);

    List<Map<String, BoardDto>> boardList = new ArrayList<Map<String, BoardDto>>();
    boardList = boardDao.getBoardList(page);

    model.addAttribute("boardList", boardList);
    model.addAttribute("paging", pagingVo);
  }

  /*권한체크 session의 id로 db에서 권한 data 체크*/
  @Override
  public void adminCheck(Model model, HttpSession session) {
    String id = (String)session.getAttribute("userId");
    String adminLevel = boardDao.adminCheck(id);

    model.addAttribute("adminLevel", adminLevel);

    System.out.println(adminLevel);
  }

  @Override
  public String boardWrite(BoardDto boardDto, HttpSession session) {
    Map<String, Object> map = new HashMap();
    map.put("boardDto", boardDto);
    map.put("userId", session.getAttribute("userId"));

    int result = boardDao.boardWrite(map);
    String responseUrl;
//    if (result == 1) {
//      responseUrl = "redirect:/"
//    }
    return null;
  }

  @Override
  public List<Map<String, Object>> getJsonBoard() {

    return boardDao.getJsonBoard();
  }
}
