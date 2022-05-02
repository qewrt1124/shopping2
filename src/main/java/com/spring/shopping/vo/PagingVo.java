package com.spring.shopping.vo;

public class PagingVo {
  // 총 게시글, 시작게시글, 현재페이지, 총 페이지수, 시작페이지
  int totalCount, start, nowPage, totalPages, startPage, viewCount;
  String searchOptions, searchData;

  public int getViewCount() {
    return viewCount;
  }

  public void setViewCount(int viewCount) {
    this.viewCount = viewCount - 1;
  }

  public String getSearchOptions() {
    return searchOptions;
  }

  public void setSearchOptions(String searchOptions) {
    this.searchOptions = searchOptions;
  }

  public String getSearchData() {
    return searchData;
  }

  public void setSearchData(String searchData) {
    this.searchData = searchData;
  }

  public int getTotalCount() {
    return totalCount;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;
  }

  public int getStart() {
    return start;
  }

  public void setStart(int nowPage, int viewCount) {
    if (nowPage == 1) {
      this.start = 0;
    } else {
      this.start = (nowPage - 1) * viewCount + 1;
    }
  }

  public int getNowPage() {
    return nowPage;
  }

  public void setNowPage(int nowPage) {
    this.nowPage = nowPage;
  }

  public int getTotalPages() {
    return totalPages;
  }

  public void setTotalPages(int totalCount, int viewCount) {

    if (totalCount % viewCount != 0) {
      this.totalPages = totalCount / viewCount + 1;
    } else {
      this.totalPages = totalCount / viewCount;
    }
  }

  public int getStartPage() {
    return startPage;
  }

  public void setStartPage(int nowPage) {

    if (nowPage % 5 == 0) {
      startPage = ((nowPage / 5) - 1) * 5 + 1;
    } else {
      startPage = (nowPage / 5) * 5 + 1;
    }
  }
}
