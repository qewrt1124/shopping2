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

<%--게시글 수정--%>
<div class="board-edit-wrap common-size">
  <form action="/boardEdit" method="post" enctype="multipart/form-data">
    <table class="board-edit-table">
      <%--제목--%>
      <tr>
        <th>제목</th>
        <td><input name="title" type="text" value="제목"></td>
      </tr>
        <%--내용--%>
      <tr>
        <th>내용</th>
        <td><textarea class="board-write-content content" name="content">재작성</textarea></td>
      </tr>
        <%--첨부파일--%>
      <tr>
        <th>첨부파일 이름</th>
        <td>
          <input type="file">
        </td>
      </tr>
        <%--버튼목록--%>
      <tr>
        <td colspan="2">
          <div class="board-edit-button">
          <button type="button" onclick="location.href='/boardList'">목록</button>
          <button type="reset" onclick="BoardContentReset()">재작성</button>
          <button type="submit">수정완료</button>
          </div>
        </td>
      </tr>
    </table>
  </form>
</div>

<footer class="common-size">
  <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</footer>
</body>
</html>
