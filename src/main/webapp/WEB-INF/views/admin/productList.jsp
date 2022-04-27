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
<article class="admin-article-wrap">
  <jsp:include page="/WEB-INF/views/admin/adminArticle.jsp"></jsp:include>
</article>
<div class="product-list-wrap common-size">
  <h1>제품리스트</h1>
  <table class="product-list-table">
    <tr>
      <th>리스트번호</th>
      <th>제품사진</th>
      <th>제품번호</th>
      <th>제품명</th>
      <th>제품가격</th>
      <th>보유색상</th>
      <th>보유사이즈</th>
      <th>보유개수</th>
      <th>등록일자</th>
    </tr>
    <tr>
      <td>리스트번호</td>
      <td>제품사진</td>
      <td>제품번호</td>
      <td>제품명</td>
      <td>제품가격</td>
      <td>보유색상</td>
      <td>보유사이즈</td>
      <td>보유개수</td>
      <td>등록일자</td>
    </tr>
  </table>
  <div class="product-list-button-wrap">
    <div class="product-list-search-wrap">
      <select class="product-list-search-option">
        <option value="productnumber">제품번호</option>
        <option value="productname">제품명</option>
        <option value="productprice">제품가격</option>
        <option value="productcolor">색상</option>
        <option value="productsize">사이즈</option>
      </select>
      <input type="text" name="productList-searchData">
      <button type="button" id="productList-searchButton">검색</button>
    </div>
    <button type="button" id="productRegister-button" onclick="location.href='/admin/productRegister'">글쓰기</button>
  </div>
</div>

</body>
</html>
