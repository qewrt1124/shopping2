<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <tr>
      <td>번호</td>
      <td><a href="/boardContent">제목</a></td>
      <td>작성자</td>
      <td>등록일자</td>
      <td>조회수</td>
    </tr>
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
    <%--게시판 글쓰기--%>
    <div class="board-write-button">
      <button type="button"><a href="/boardWrite">글쓰기</a></button>
    </div>
  </div>
</div>
<footer class="common-size">
  <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</footer>
</body>
</html>
