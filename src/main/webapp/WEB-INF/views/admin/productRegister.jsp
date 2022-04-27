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

<%--제품등록 wrap--%>
<form name="productForm" id="productForm" method="post" enctype="multipart/form-data" onsubmit="return false">
  <div class="productRegister-wrap common-size">
    <table class="productRegister-table">
      <tr>
        <th>카테고리</th>
        <td>
          <select name="category" id="category" onchange="menuCategory(this.value)">
            <option value="mans-clothes">남성복</option>
            <option value="top">상의</option>
          </select>
          <select name="clothes_sub_category" id="clothes_sub_category">

          </select>
        </td>
      </tr>
      <tr>
        <th>제품번호</th>
        <td><input type="text" name="productnumber" id="productNumber"></td>
      </tr>
      <tr>
        <th>제품명</th>
        <td><input type="text" name="productname" id="productName"></td>
      </tr>
      <tr>
        <th>제품가격</th>
        <td><input type="text" name="productprice" id="productPrice"></td>
      </tr>
      <tr>
        <th>색상</th>
        <td>
          <input type="text" name="color" id="color">
        </td>
      </tr>
      <tr>
        <th>사이즈</th>
        <td><input type="text" name="size" id="size"></td>
      </tr>
      <tr>
        <th>수량</th>
        <td><input type="number" name="quantity" id="quantity" min="0" onkeyup="positiveNumber(this.value)"></td>
      </tr>
      <tr>
        <th>제품이미지</th>
        <td><input type="file" name="productimg" id="productImg" ></td>
      </tr>
      <tr>
        <td colspan="2">
          <button type="button" onclick="nullCheck()">등록</button>
        </td>
      </tr>
    </table>
  </div>
</form>

<footer class="common-size">
  <jsp:include page="/WEB-INF/views/main/footer.jsp"></jsp:include>
</footer>
</body>
</html>
