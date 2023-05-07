<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/06
  Time: 3:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션태스</title>
</head>
<body>
    <h2>인쿠루드된 페이지에서 매개변수 확인</h2>
    <%=request.getParameter("loc1")%>에
    <%= request.getParameter("loc2")%>이 있습니다.

</body>
</html>
