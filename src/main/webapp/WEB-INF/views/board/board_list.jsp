<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="/resources/css/shopping.css">
  <script rel="script" type="text/javascript" src="/resources/js/shopping.js"></script>
</head>
<body>
<header class="common-size">
  <jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
</header>
<%--게시판 전체--%>
<div class="board-wrap common-size">
  <%--게시판 알림--%>
  <div class="board-top-wrap">
    <h1>게시판</h1>
  </div>
  <%--게시판 목록--%>
  <table class="board-list-table">
    <tr>
      <th class="board-table-number">번호</th>
      <th class="board-table-title">제목</th>
      <th class="board-table-writer">작성자</th>
      <th class="board-table-date">등록일자</th>
      <th class="board-table-counting">조회수</th>
    </tr>
    <c:forEach var="boardList" items="${boardList}">
    <tr>
      <td>${boardList.bid}</td>
      <td>${boardList.title}</td>
      <td>${boardList.bwriter}</td>
      <td>${boardList.writeDate}</td>
      <td>조회수</td>
    </tr>
    </c:forEach>
  </table>
  <div class="board-bottom-wrap">
    <%--게시판 검색창--%>
    <div class="board-search">
      <select name="searchOptions" id="search-key" class="searchBox">
        <option value="title">제목</option>
        <option value="content">내용</option>
        <option value="writer">작성자</option>
      </select>
      <input type="text" id="search-content" name="searchData">
      <button type="submit">찾기</button>
    </div>
      <%--게시판 페이지 번호--%>
<%--      <div class="board-page-number">--%>
<%--        <c:forEach var="i" begin="${paging.startPage}" end="${paging.startPage + 4}">--%>
<%--          <a href="/boardList/${boardList.category}/${1}">--%>
<%--            <input class="page-number" type="button" value="${i}">--%>
<%--          </a>--%>
<%--        </c:forEach>--%>
<%--      </div>--%>
    <%--게시판 글쓰기--%>
      <c:if test="${adminLevel == 3 || adminLevel == 2}">
        <div class="board-write-button">
          <button type="button"><a href="/boardWrite">글쓰기</a></button>
        </div>
      </c:if>
  </div>
</div>
<footer class="common-size">
  <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</footer>
</body>
</html>
