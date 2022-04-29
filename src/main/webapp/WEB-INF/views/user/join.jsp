<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>쇼핑몰 메인</title>
  <link type="text/css" rel="stylesheet" href="/resources/css/shopping.css">
  <script type="text/javascript" src="/resources/js/shopping.js"></script>
</head>
<body>
<%--header--%>
<header class="common-size">
  <jsp:include page="/WEB-INF/views/main/header.jsp"></jsp:include>
</header>

<div class="common-size join-wrap">
  <form action="/join" method="post">
    <table class="join-table">
      <tr>
        <th>아이디</th>
        <td>
          <input type="text" name="id" id="id" onblur="isId(this.value)">
          <span id="idAlert"></span>
        </td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td>
          <input type="password" name="pass" id="pass" onblur="isPassword(this.value)">
          <span id="passAlert"></span>
        </td>
      </tr>
      <tr>
        <th>비밀번호확인</th>
        <td>
          <input type="password" name="passConfirm" id="passConfirm" onblur="passwordConfirm()">
          <span id="passConfirmAlert"></span>
        </td>
      </tr>
      <tr>
        <th>이름</th>
        <td>
          <input type="text" name="userName" id="name" onblur="isName(this.value)">
          <span id="nameAlert"></span>
        </td>
      </tr>
      <tr>
        <th>우편번호</th>
        <td>
          <input type="hidden" id="confmKey" name="confmKey" value="U01TX0FVVEgyMDIyMDQyNjE5MDIwOTExMjUwODc="  >
          <input type="text" id="zipNo" name="zipNo" readonly style="width:100px">
          <input type="button" value="주소검색" onclick="goPopup()">
        </td>
      </tr>
      <tr>
        <th>도로명주소</th>
        <td><input type="text" id="roadAddrPart1" name="roadAddrPart1" style="width:85%"></td>
      </tr>
      <tr>
        <th>상세주소</th>
        <td>
          <input type="text" id="addrDetail" name="addrDetail" style="width:40%">
          <input type="text" id="roadAddrPart2" name="roadAddrPart2" style="width:40%">
        </td>
      </tr>
      <tr>
        <th>연락처</th>
        <td><input type="tel" name="phNum"></td>
      </tr>
      <tr>
        <th>이메일</th>
        <td><input type="email" name="email"></td>
      </tr>
      <tr>
        <td colspan="2">
          <div class="join-button">
            <button type="submit">가입완료</button>
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
