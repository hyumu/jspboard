<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/03
  Time: 8:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    클라이어트가 웹 브라우저를 통해 서버에 접속한 후 용무를 처리하고 웹 브라우저를 닫아 서버와의 접속을 종료하는 하나의 단위를 세션이라고 하낟.
    즉, 세션을 클랑이언트가 서버에 접속해 있는 동안 그 상태를 유지하는 것이 목적
--%>
<%
    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");// 날짜 시간 설정

    long creationTime = session.getCreationTime(); // 최초 요청 시각
    String creationTimeStr = dateFormat.format(new Date(creationTime));

    long lastTime = session.getLastAccessedTime(); // 마지막 요청 시각
    String lastTimeStr = dateFormat.format(new Date(lastTime));
%>
<html>
<head>
    <title>Session</title>
    <h2>Session 설정 확인</h2>
    <ul>
        <%-- web.xml에 설정한 세션 유지 기간 출력 --%>
        <li>세션 유지 기간 : <%=session.getMaxInactiveInterval()%></li>
        <li>세션 아이디 : <%=session.getId()%></li>
        <li>최초 요청 시각 : <%=creationTimeStr%></li>
        <li>마지막 요청 시각 : <%=lastTimeStr%></li>
    </ul>
</head>
<body>

</body>
</html>
