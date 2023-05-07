<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/06
  Time: 2:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>
    <title>액션 태그 - UseBean</title>
</head>
<body>
  <h3>액션 태그로 폼값 한 번에 받기</h3>
  <jsp:useBean id="person" class="common.Person"  />
  <jsp:setProperty name="person" property="*" />

  <ul>
    <li>이름 : <jsp:getProperty name="person" property="name"/></li>
    <li>나이 : <jsp:getProperty name="person" property="age"/></li>
  </ul>

</body>
</html>
