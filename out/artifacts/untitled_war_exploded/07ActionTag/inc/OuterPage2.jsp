<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/05
  Time: 6:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OuterPage</title>
</head>
<body>
<h2>외부 파일</h2>
<%
    String newVar2 = "벡제 온조왕";
%>
<ul>
    <!-- page, request 영역에서 속성을 읽어와 출력하는 간단한 파일 -->
    <li>page 영역 속성 : <%=pageContext.getAttribute("pAttr")%></li>
    <li>request 영역 속성 : <%=request.getAttribute("rAttr")%></li>
</ul>

</body>
</html>