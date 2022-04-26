<%--
  Created by IntelliJ IDEA.
  User: qewrt
  Date: 2022-04-23
  Time: 오후 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%--header wrap--%>
<div class="header-wrap">
  <%--header top wrap--%>
  <div class="header-top-wrap">
    <%--로그인/회원가입/장바구니/마이페이지 (left)--%>
    <div class="header-top-left">
      <ul>
        <li><a href="/login">로그인</a></li>
        <li><a href="/join">회원가입</a></li>
        <li><a href="/cart">장바구니</a></li>
        <li><a href="/mypage">마이페이지</a></li>
      </ul>
    </div>
    <div class="header-top-right">
    <%--공지사항/이벤트/상품문의/상품후기 (right)--%>
      <ul>
        <li><a href="/boardList">공지사항</a></li>
        <li><a href="/event">이벤트</a></li>
        <li><a href="/inquiry">상품문의</a></li>
        <li><a href="/review">상품후기</a></li>
      </ul>
    </div>
  </div>
    <%--로고/검색창--%>
  <div class="header-middle-wrap">
    <%--로고--%>
    <span class="header-logo">
      <a href="/"><img src="/resources/image/logo.png"></a>
    </span>
    <%--검색창--%>
    <div class="header-search">
      <%--검색 text--%>
      <input class="header-searchBox" type="text" name="headerSearch">
      <button type="submit">
        <img src="/resources/image/search-button.png">
      </button>
    </div>
  </div>
  <%--카테고리 목록--%>
  <div class="header-bottom-wrap">
    <div class="header-category">
      <ul>
        <%--카테고리 리스트 box--%>
        <li class="header-category-list">
          메뉴
          <ul>
            <li>1</li>
            <li>2</li>
          </ul>
        </li>
          <%--카테고리 리스트--%>
        <li><a>NEW</a></li>
        <li><a>할인품목</a></li>
        <li><a>남성의류</a></li>
        <li><a>아우터</a></li>
        <li><a>탑</a></li>
        <li><a>드레스</a></li>
        <li><a>바지</a></li>
        <li><a>신발</a></li>
        <li><a>악세사리</a></li>
      </ul>
    </div>
  </div>
</div>
</body>
</html>
