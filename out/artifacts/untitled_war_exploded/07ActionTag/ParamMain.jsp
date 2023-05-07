<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/06
  Time: 3:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String pValue = "방량시인";
%>
<html>
<head>
    <title>액션태그 - param</title>
</head>
<body>
    <jsp:useBean id="person" class="common.Person" scope="request" />
    <jsp:setProperty name="person" property="name" value="김삿갓" />
    <jsp:setProperty name="person" property="age" value="56" />
    <jsp:forward page="ParamForward.jsp?param1=김병연">
        <jsp:param name="param2" value="경기도 양주"/>
        <jsp:param name="param3" value="<%=pValue%>"/>
    </jsp:forward>




</body>
</html>
