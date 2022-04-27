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

<section class="product-content-wrap">
  <table class="product-content-table">
    <tr>
      <th>제품번호</th>
      <td>제품번호</td>
    </tr>
    <tr>
      <th>제품명</th>
      <td>제품명</td>
    </tr>
    <tr>
      <th></th>
    </tr>
  </table>
</section>

</body>
</html>
