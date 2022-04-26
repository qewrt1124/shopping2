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
  <jsp:include page="header.jsp"></jsp:include>
</header>

<%--main--%>
<main class="common-size">
  <%--main 이미지--%>
  <div class="main-logo-img">
    <img src="/resources/image/main-img.jpg">
  </div>
  <%--BEST ITEMS 전체--%>
  <div class="main-bestItems-wrap">
    <%--main BEST ITEMS / 공지사항--%>
    <div class="main-title-notice-wrap">
      <%--BEST ITEMS--%>
      <div class="main-bestItems-title-wrap">
        <h1>BEST ITEMS</h1>
        <span>다를 이달의 인기상품을 확인해보세요!</span>
      </div>
      <%--공지사항--%>
      <div class="main-notice-wrap">
        <%--공지사항 이름 / +--%>
        <a class="main-notice-top" href="#">
          <span>공지사항</span>
          <span class="main-notice-top-right">+</span>
        </a>
        <%--공지사항 제목--%>
        <ul class="main-notice-bottom">
          <li>Cs관련</li>
          <li>Cs관련</li>
          <li>Cs관련</li>
          <li>Cs관련</li>
          <li>Cs관련</li>
        </ul>
      </div>
    </div>
    <%--BEST ITEMS IMG--%>
    <div class="main-bestItems-content-wrap">
      <ul>
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
      </ul>
    </div>
  </div>
  <%--NEW ITEMS 전체--%>
  <div class="main-newItems-wrap">
    <%--NEW ITEMS title--%>
    <div class="main-newItems-title-wrap">
      <h1>NEW ITEMS</h1>
      <span>업데이트되는 신상품을 가장 먼저 만나보세요</span>
    </div>
    <%--NEW ITEMS 목록--%>
    <div class="main-newItems-content-wrap">
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
      <ul class="main-newItems-content">
        <li>
          <a>
            <img class="main-img" href="#" src="/resources/image/product/제품이미지.png">
          </a>
        </li>
        <li>
          <span style="background-color: #0000ff"></span>
        </li>
        <li>
          <span>브이 트임 넥 반팔 티</span>
        </li>
        <li>
          가격
        </li>
        <li>
          배송비:무료
        </li>
        <li>
          적립금
        </li>
      </ul>
    </div>
  </div>
  <%--상품 후기--%>
  <div class="main-review-wrap">
    <%--상품 후기 title--%>
    <div class="main-review-title-wrap">
      <h1>상품후기</h1>
      <span>상품 사용후기입니다.</span>
    </div>
      <%--상품 후기 목록--%>
    <div class="main-review-content-wrap">
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
      <ul class="main-review-content">
        <li class="main-review-content-img">
          <img src="/resources/image/product/제품이미지.png">
        </li>
        <li>
          <span>최고최고에요</span>
        </li>
        <li>
          <span>빨간색으로 구매했는데요.</span>
        </li>
        <li>
          <span>별점</span>
        </li>
        <li>
          <span>아이디</span>
        </li>
        <li>
          <ul class="main-review-bottom">
            <li class="main-review-bottom-img">
              <img src="/resources/image/product/제품이미지.png">
            </li>
            <li class="main-review-bottom-content">
              <span>제품이름</span>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</main>
<%--footer--%>
<footer class="common-size">
  <jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>
