<%@ page import="utils.CookieManager" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/02
  Time: 3:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%-- 로그인 페이지에서 아디를 저장하는 기능 --%>
<%-- JSP에서 자바스크립트를 사용하기 위한 클래스를 먼저 생성 --%>
<%-- 자바스크립트는 메세지를 띄우거나, 페이지를 이동하는 코드를 통해 로그인의 성공여부에 따라 동작을 처리하는 기능하는 데
     JSP에서 자바스크립트를 사용하는 경우 코드 소스가 전체적으로 지저분해지고 반복되는 코드가 많아진다.
     따라서 이를 보안하기 위해 알림창을 띄운 후 지정된 페이지를 이동하는 코드를 클래스를 통해 미리 생성해 두어 사용한다.(JSFunction.class)--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String loginId = CookieManager.readCookie(request,"loginId");
    // loginId 쿠키를 읽어와 변수에 저장하여 (아이디 입력창에 기본값으로 사용할 예정)

    String cookieCheck="";
    if(!loginId.equals("")){
        cookieCheck="checked";
    }
%>
<html>
<head>
    <title>Cookie - 아이디 저장하기</title>
</head>
<body>
<h2>로그인 페이지</h2>
<form action="IdSaveProcess.jsp" method="post">
    아이디 : <input type="text" name="user_id" value="<%=loginId%>">
    <input type="checkbox" name="save_check" value="Y"<%=cookieCheck%>> 아이디 저장하기<br>
    패드워드 : <input type="text" name="user_pw"><br>
    <input type="submit" value="로그인하기">
</form>

</body>
</html>
