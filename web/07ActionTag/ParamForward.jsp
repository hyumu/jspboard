<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/06
  Time: 3:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태그 - param</title>
</head>
<body>
    <jsp:useBean id="person" class="common.Person" scope="request" />
    <h2>포워드된 페이지에서 매개변수 확인</h2>

    <ul>
        <li><jsp:getProperty name="person" property="name"/></li>
        <li>나이 : <jsp:getProperty name="person" property="age"/></li>
        <li>본명 : <%=request.getParameter("param1")%></li>
        <li>출생 : <%=request.getParameter("param2")%></li>
        <li>특징 : <%=request.getParameter("param3")%></li>
    </ul>
<!--
    include 액션태그로 인크루드한 jsp 페이지와는 변수를 직접 조유할수 없다.
    하지만 param 액션태그를 이용하면 인클루드한 페이지로도 매개변수를 전달할 수 있다.
-->
    <jsp:include page="inc/ParamInclude.jsp">
        <jsp:param name="loc1" value="강원도 명월"/>
        <jsp:param name="loc2" value="김삿삿면"/>
    </jsp:include>

</body>
</html>
