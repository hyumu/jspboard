<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/06
  Time: 2:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태그 - UseBean</title>
</head>
<body>
  <h2>useBean 액션 태그</h2>
  <h3>자바 빈즈 생성</h3>
  <jsp:useBean id="person" class="common.Person" scope="request" />

  <h3>setProperty 액션 태그로 자바빈즈 속성 저장하기</h3>
  <jsp:setProperty name="person" property="name" value="임꺽정" />
  <jsp:setProperty name="person" property="age" value="41" />

  <h3>getProperty 액션 태그로 자바빈즈 속성 추출하기</h3>
  <ul>
    <li> 이름 :<jsp:getProperty name="person" property="name"  /> </li>
    <li> 나이 :<jsp:getProperty name="person" property="age"  /> </li>
  </ul>



</body>
</html>
