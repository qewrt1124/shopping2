<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%--header wrap--%>
<div class="header-wrap">
  <%--header top wrap--%>
  <div class="header-top-wrap">
    <%--로그인/회원가입/장바구니/마이페이지 (left)--%>
    <div class="header-top-left">
      <ul>
        <c:choose>
          <c:when test="${userId == null}">
            <li><a href="/login">로그인</a></li>
          </c:when>
          <c:otherwise>
            <li><a href="/logout" id="logout">로그아웃</a></li>
          </c:otherwise>
        </c:choose>
        <li><a href="/join">회원가입</a></li>
        <li><a href="/cart">장바구니</a></li>
        <li><a href="/mypage">마이페이지</a></li>
        <li><a href="/admin">관리자페이지</a></li>
      </ul>
    </div>
    <div class="header-top-right">
    <%--공지사항/이벤트/상품문의/상품후기 (right)--%>
      <ul>
        <li><a href="/boardList/notice">공지사항</a></li>
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
