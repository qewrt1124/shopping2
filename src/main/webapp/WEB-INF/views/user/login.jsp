<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>쇼핑몰 메인</title>
  <link type="text/css" rel="stylesheet" href="/resources/css/shopping.css">
  <script type="text/javascript" src="/resources/js/shopping.js"></script>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<body>
<%--header--%>
<header class="common-size">
  <jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
</header>

<div class="common-size login-wrap" onkeyup="enterKey()">
    <h1>LOGIN</h1>
    <ul class="login-table">
      <li>
        <input type="text" name="id" id="id" placeholder="아이디">
      </li>
      <li>
        <input type="password" name="pass" id="pass" placeholder="비밀번호">
      </li>
      <li>
        <a>아이디/비밀번호 찾기</a>
        <a href="/join">회원가입</a>
        <button type="button" class="login-button" onclick="loginCheck()">로그인</button>
      </li>
    </ul>
</div>

<footer class="common-size">
  <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</footer>
</body>
</html>
