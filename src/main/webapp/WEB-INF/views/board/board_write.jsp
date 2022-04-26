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

<div class="board-write-wrap common-size">
  <form name="board-write" method="post" enctype="multipart/form-data">
  <table class="board-table">
    <tr>
      <td><input class="board-write-title" type="text" name="title" id="title"></td>
    </tr>
    <tr>
      <td><textarea class="board-write-content content" name="content"></textarea></td>
    </tr>
    <tr>
      <td><input type="file" name="file" id="file"></td>
    </tr>
    <tr>
      <td style="text-align: right">
        <button type="button" onclick="location.href='/boardList'">목록</button>
        <button type="button" onclick="BoardContentReset()">재작성</button>
        <button type="submit">완료</button>
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
