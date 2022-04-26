/*게시판 내용 RESET*/
function BoardContentReset() {
  var target = document.getElementsByClassName("content");
  target.value = "";
}

/*이름 체크*/
function isName(asValue) {
  var regExp = /^[a-zA-Zㄱ-힣][a-zA-Zㄱ-힣]*$/;
  var nameSpace = document.getElementById("name");
  // nameSpace.style.transitionProperty(isName(asValue) !== false);
  if (regExp.test(asValue) !== true) {
    /*nameSpace.style.borderColor = "red";*/
    nameSpace.style.border = "2px solid red";
    nameSpace.style.transitionDuration = "3s";
  }
  return regExp.test(asValue);
}

/*아이디 체크*/
function isId(asValue) {
  var regExp = /^[a-z]+[a-z0-9]{5,19}$/g;

  return regExp.test(asValue);
}

/*비밀번호 체크*/
function isPassword(asValue) {
  var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
  // if (regExp.test(asValue) === false) {
  //
  // }

  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
}

/*비밀번호 체크*/
function passwordConfirm() {
  var pass1 = document.getElementById("pass").value;
  var pass2 = document.getElementById("passConfirm").value;

  if (pass1 !== pass2) {
    alert("비밀번호 다시 확인");
    return false
  }
}

/*이메일 체크*/
function isEmail(asValue) {
  var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

  return regExp.test(asValue);
}

function endCheck() {
  if (isId(document.getElementById("id").value) == false) {
    alert("아이디체크");
  } else if (isPassword(document.getElementById("pass").value) == false) {
    alert("비밀번호체크");
  }
}

/*도로명 주소*/
function goPopup(){
//경로는 시스템에 맞게 수정하여 사용
//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
//호출하게 됩니다.
  var pop = window.open("/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes");
//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo){
  // 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
  document.form.roadFullAddr.value = roadFullAddr;
  document.form.roadAddrPart1.value = roadAddrPart1;
  document.form.roadAddrPart2.value = roadAddrPart2;
  document.form.addrDetail.value = addrDetail;
  document.form.zipNo.value = zipNo;
}