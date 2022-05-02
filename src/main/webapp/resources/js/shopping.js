/*게시판 내용 RESET*/
function BoardContentReset() {
  let target = document.getElementsByClassName("content");
  target.value = "";
}

/*회원가입*/

/*아이디 체크*/
function isId(asValue) {
  let regExp = /^[a-z]+[a-z0-9]{5,19}$/g;
  let inputSpace = document.getElementById("id");
  let alertSpace = document.getElementById("idAlert");

  if (regExp.test(asValue)) {
    inputSpace.style.border = "1px solid black";
    alertSpace.innerHTML = "";
    return true;
  } else {
    inputSpace.style.border = "2px solid red";
    alertSpace.innerHTML = "<br>영어와 숫자를 6~19자리까지 입력하세요.";
    return false
  }

  return regExp.test(asValue);
}

/*비밀번호 체크*/
function isPassword(asValue) {
  let regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
  let inputSpace = document.getElementById("pass");
  let alertSpace = document.getElementById("passAlert");

  if (regExp.test(asValue)) {
    inputSpace.style.border = "1px solid black";
    alertSpace.innerHTML = "";
    return true;
  } else {
    inputSpace.style.border = "2px solid red";
    alertSpace.innerHTML = "<br>영어, 숫자, 특수 문자(1개이상) 혼합해서 9~16자리까지 입력하세요.";
    return false
  }

  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

/*비밀번호 체크*/
function passwordConfirm() {
  let passConfirm = document.getElementById("passConfirm");
  let pass1 = document.getElementById("pass").value;
  let pass2 = passConfirm.value;
  let alertSpace = document.getElementById("passConfirmAlert");

  if (pass1 !== pass2) {
    passConfirm.style.border = "2px solid red";
    alertSpace.innerHTML = "<br>비밀번호가 일치하지 않습니다.";
    return false
  }
}

/*이름 체크*/
function isName(asValue) {
  let regExp = /^[a-zA-Z가-힣][a-zA-Z가-힣]*$/;
  let inputSpace = document.getElementById("name");
  let alertSpace = document.getElementById("nameAlert");

  if (regExp.test(asValue)) {
    inputSpace.style.border = "1px solid black";
    alertSpace.innerHTML = "";
    return true;
  } else {
    inputSpace.style.border = "2px solid red";
    alertSpace.innerHTML = "<br>한글 또는 영어만 입력하세요.";
    return false
  }
}

/*이메일 체크*/
function isEmail(asValue) {
  let regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

  return regExp.test(asValue);
}

function endCheck() {
  if (isId(document.getElementById("id").value) == false) {
    alert("아이디체크");
  } else if (isPassword(document.getElementById("pass").value) == false) {
    alert("비밀번호체크");
  }
}

/*전화번호*/
// function phoneNumber(value) {
//   if (!value) {
//     return "";
//   }
//   console.log(value);
//   value = value.replace(/[^0-9]/g, "");
//
//   let result = [];
//   let restNumber = "";
//
//   // 지역번호와 나머지 번호로 나누기
//   if (value.startsWith("02")) {
//     // 서울 02 지역번호
//     result.push(value.substr(0, 2));
//     restNumber = value.substring(2);
//   } else if (value.startsWith("1")) {
//     // 지역 번호가 없는 경우
//     // 1xxx-yyyy
//     restNumber = value;
//   } else {
//     // 나머지 3자리 지역번호
//     // 0xx-yyyy-zzzz
//     result.push(value.substr(0, 3));
//     restNumber = value.substring(3);
//   }
//
//   if (restNumber.length === 7) {
//     // 7자리만 남았을 때는 xxx-yyyy
//     result.push(restNumber.substring(0, 3));
//     result.push(restNumber.substring(3));
//   } else {
//     result.push(restNumber.substring(0, 4));
//     result.push(restNumber.substring(4));
//   }
//
//   return result.filter((val) => val).join("-");
// }

/*도로명 주소*/
function goPopup() {
//경로는 시스템에 맞게 수정하여 사용
//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
//호출하게 됩니다.
  let pop = window.open("/jusoPopup", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo) {
  // 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
  document.form.roadFullAddr.value = roadFullAddr;
  document.form.roadAddrPart1.value = roadAddrPart1;
  document.form.roadAddrPart2.value = roadAddrPart2;
  document.form.addrDetail.value = addrDetail;
  document.form.zipNo.value = zipNo;
  alert("아test");
}

/*제품등록 카테고리*/

/*메뉴 카테고리*/
function menuCategory(e) {
  let top = new Map();
  top.set("sweater", "스웨터");
  top.set("T-shirt", "T-shirt");
  top.set("skirt", "치마");

  let man = new Map();
  man.set("top", "상의");
  man.set("bottom", "바지");
  man.set("outer", "아웃터");

  top.forEach((value, key, top) => console.log(key + ',' + value));
  let target = document.getElementById("clothes_sub_category");

  target.options.length = 0;

  if (e === "top") {
    inputOption(top);
  } else if (e === "mans-clothes") {
    inputOption(man);
  }

  function inputOption(d) {

    console.log(d);
    for (let [key, value] of d) {
      let opt = document.createElement("option");
      opt.value = key;
      opt.innerText = value;
      target.appendChild(opt);
    }
  }
}

/*공백체크*/
function nullCheck() {
  let clothesSub = document.getElementById("clothes_sub_category");
  let productNumber = document.getElementById("productNumber");
  let productName = document.getElementById("productName");
  let productPrice = document.getElementById("productPrice");
  let color = document.getElementById("color");
  let size = document.getElementById("size");
  let productImg = document.getElementById("productImg");
  let quantity = document.getElementById("quantity");
  let form = document.getElementById("productForm");

  if (clothesSub.value === "") {
    clothesSub.focus();
    clothesSub.style.border = "2px solid red";
    return false;
  } else if (productNumber.value.trim() === "") {
    productNumber.focus();
    productNumber.style.border = "2px solid red";
    return false;
  } else if (productName.value.trim() === "") {
    productName.focus();
    productName.style.border = "2px solid red";
    return false;
  } else if (productPrice.value.trim() === "") {
    productPrice.focus();
    productPrice.style.border = "2px solid red";
    return false;
  } else if (color.value.trim() === "") {
    color.focus();
    color.style.border = "2px solid red";
    return false;
  } else if (size.value.trim() === "") {
    size.focus();
    size.style.border = "2px solid red";
    return false;
  } else if (quantity.value === "" || positiveNumber(quantity.value) === true) {
    quantity.focus();
    quantity.style.border = "2px solid red";
    return false;
  } else if (productImg.value === "") {
    productImg.focus();
    productImg.style.border = "2px solid red";
    return false;
  }

  form.method = "post";
  form.submit();
}

/*type=number 양수만 입력*/
function positiveNumber(e) {
  let regExp = /^[0-9]/;

  if (regExp.test(e) === false) {
    return false;
  }
  return true;
}

/*로그인*/

/*Login id/pass check*/
function loginCheck() {
  let id = $('#id').val();
  let pass = $('#pass').val();
  let sendData = {'id': id, 'pass': pass};

  $.ajax({
    method: 'POST',
    url: '/loginCheck',
    data: JSON.stringify(sendData),
    contentType: 'application/json',
    success: (resp) => {
      if (resp === 'fail') {
        console.log('아이디랑 안 맞음');
      } else {
        location.href = '/';
      }
    }
  }).fail(() => {
    console.log('fail');
  });
}

/*로그인에서 엔터키 누르면 작동*/
function enterKey() {
  $('.login-wrap').keypress((e) => {
    if (e.keyCode === 13) {
      loginCheck();
    }
  });
}

/*로그아웃*/
function logout() {
  $.ajax({
    method: 'POST',
    url: '/logout'

  })
}