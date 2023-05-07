<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/05
  Time: 11:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션태그 - forward</title>
</head>
<body>
  <h2>포워드 결과</h2>
  <ul>
    <li>
      page 영역 : <%=pageContext.getAttribute("pAttr")%>
    </li>
    <li>
      request 영역 : <%=request.getAttribute("rAttr")%>
    </li>
  </ul>

</body>
</html>
