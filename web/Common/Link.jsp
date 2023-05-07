<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/04
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--공동 링트 추가--%>
<%--페이지 사이의 이동이 좀더 편하게 사용하기 위해 링크 추가--%>
<table border="1" width="90%">
    <tr>
        <td align="center">
            <%
                if (session.getAttribute("UserId")==null){
            %>
            <a href="http://localhost:8080/06Session/LoginForm.jsp">로그인</a>
            <%
                }else {
            %>
            <a href="http://localhost:8080/06Session/Logout.jsp">로그아웃</a>
            <%}%>
            <!-- 8장과 9장의 회원 게시판 프로젝트에서 사용할 링크 -->
            &nbsp;&nbsp;&nbsp; <!--메뉴 사이의 공백(space)확보용 특수 문자-->
            <a href="http://localhost:8080/08Board/List.jsp">게시판(페이징 x )</a>
            &nbsp;&nbsp;&nbsp; <!--메뉴 사이의 공백(space)확보용 특수 문자-->
            <a href="http://localhost:8080/09PagingBoard/List.jsp">게시판(페이징 O )</a>
        </td>
    </tr>
</table>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
