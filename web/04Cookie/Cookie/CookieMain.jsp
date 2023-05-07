<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/01
  Time: 1:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>1. 쿠키(Cookie) 설정</h2>
    <%
    Cookie cookie = new Cookie("myCookie","쿠키맛나요"); // 쿠키 생성
    cookie.setPath(request.getContextPath());// 경로를 컨텍스트 루트로 설정
        // request 내장 객체의 getContextPath()로 얻어온 컨덱스트 루트
    cookie.setMaxAge(3600); // 유지 기간을 1시간으로 설정
    response.addCookie(cookie); // 응답 헤더에 쿠키 추가
    %>

<h2>2. 쿠키 설정 직후 쿠키값</h2>
<%
    Cookie[] cookies = request.getCookies(); // 요청 헤더의 모든 쿠키 얻기
    if (cookies!=null){
        for (Cookie c : cookies){
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            out.println(String.format("%s : %s<br>",cookieName,cookieValue));
        }
    }
%>

<h2>3. 페이지 확인후 쿠키값 확인하기</h2>
<a href="CookieResult.jsp">
    다음 페이지에서 쿠키값 확인하기
</a>
</body>
</html>
