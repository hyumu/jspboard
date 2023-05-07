<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/05
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    포워드는 현재 페이제에서 들어온 요청을 다름 페잊로 보내는 기능
    RequestDispatcher 객체의 forward() 메서드 사용하는데
    액션테그도 같은 기능을 수행한다.
    forward 액션 태그를 만나기까지의 모든 출력을 제거하고 포워드할 페이지로 요청을 전달한다.
--%>
<%
    pageContext.setAttribute("pAttr","김유신");
    request.setAttribute("rAttr","계백");
%>
<html>
<head>
    <title>액선 태그 - forward</title>
</head>
<body>
    <h2>액션 태그를 이용한 포워딩</h2>
    <jsp:forward page="/07ActionTag/ForwardSub.jsp"></jsp:forward>

</body>
</html>
