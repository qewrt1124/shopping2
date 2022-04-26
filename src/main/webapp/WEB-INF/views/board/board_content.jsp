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
<%--게시판 내용--%>
<div class="board-content-wrap common-size">
  <table class="board-table board-content-table">
    <tr>
      <td style="font-size: 15px; border: 0">카테고리</td>
    </tr>
    <tr>
      <th>제목</th>
      <td>제목내용</td>
    </tr>
    <tr>
      <th>작성일자</th>
      <td>작성일자내용</td>
    </tr>
    <tr>
      <td colspan="2" class="board-content-textarea">
        내용
      </td>
    </tr>
    <tr>
      <td colspan="2" style="border-bottom: 0">
        <div class="board-content-button-wrap">
        <button type="button" onclick="location.href='/boardList'">목록</button>
        <button type="button" onclick="location.href='/boardEdit'">수정</button>
        <button type="button" onclick="location.href='/boardDelete'">삭제</button>
        </div>
      </td>
    </tr>
  </table>
</div>
<footer class="common-size">
  <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</footer>
</body>
</html>
