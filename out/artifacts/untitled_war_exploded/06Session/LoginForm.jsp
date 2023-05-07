<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/03
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 세션과 DB를 이용한 로그인 구현--%>
<html>
<head>
    <title>Session</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp"></jsp:include>
<h2>로그인 페이지</h2>
<span style="color: red; font-size:1.2em;">
    <%-- request 내강객체 영역에 LoginErrMsg 속성이 있는지 확인후 메세지 출력 --%>
    <%= request.getAttribute("LoginErrMsg")== null ? "" : request.getAttribute("LoginErrMsg") %>
  </span>
<%
  // 사용자 아이가 세션영역에 저장되어 있느지 확인
  if (session.getAttribute("UserId")==null)
  {
%>
<script>
  <%-- 세션영역에 저장 여부에 따라 로드아웃 상태시 아이디를 입력하세요 혹은 비밀번호를 입력하세요 출력
       로그인 상태시 로그인 했습니다 출력--%>
  function validateForm(form) {
    if (!form.user_id.value) {
      alert("아이디를 입력하세요");
      return false;
    }
    if (form.user_pw.value==""){
      alert("비밀번호를 입력하세요.");
      return false;
    }
  }
</script>
<%-- 아이다와 패스워드를 입력한 후 로그인 하기를 누리면 LojinProcess 로 폼값이 전송된다.
     서버에서는 이 값을 받아 로그인 처리를 하는데 이때 DB연돌이 필요하다.--%>
<form action="LoginProcess.jsp" method="post" name="loginFrm" onsubmit="return validateForm(this)";>
  아이디 : <input type="text" name="user_id"><br>
  패스워드 : <input type="password" name="user_pw"><br>
  <input type="submit" value="로그인 하기">
</form>
<%
}else {
%>
<%=session.getAttribute("UserName")%>회원님이 로그인 하였습니다.<br>
<a href="Logout.jsp">[로그아웃]</a>
<%
  }
%>
</body>
</html>
