<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/04
  Time: 11:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 방법 1: 회원인증정보 속성 삭제
    session.removeAttribute("UserId");
    session.removeAttribute("UserName");

    // 방법 2: 모든 속성 한꺼번에 삭제
    // invalidate를 사용하면 세션 정보를 더 이상 유지할 필요가 없어 부담이 줄어든다.
    session.invalidate();

    // 속성 삭제 후 페이지 이동
    response.sendRedirect("LoginForm.jsp");
%>
