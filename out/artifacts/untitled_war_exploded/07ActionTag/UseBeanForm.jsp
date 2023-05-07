<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/06
  Time: 2:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    자바빈즈에 값을 설정할때 property 속성에 와일드 카드(*) 사용하기
    와일드 카드를 사용하면 <form>태그를 통해 전송되는 모든 폼값을 한 번에 자바빈즈에 입력할 수 있다.
--%>
<html>
<head>
    <title>액션 태그(UseBeanAction)</title>
</head>
<body>
    <h2>액션 태그로 폼값 한 번에 받기</h2>
    <form method="post" action="UseBeanAction.jsp">
        이름 : <input type="text" name="name">
        나이 : <input type="text" name="age">
        <input type="submit" value="폼값 전송">
    </form>

</body>
</html>
