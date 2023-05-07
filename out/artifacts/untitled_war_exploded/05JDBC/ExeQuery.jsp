<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="javax.print.DocFlavor" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/03
  Time: 8:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 정적 쿼리문 작성 --%>
<html>
<head>
    <title>JDBC</title>
</head>
<body>
<h2>회원 목록 조회 데스트(executeQuery())</h2>
<%
  // 순서
  // DB연결 -> 입력값 준비 -> 쿼리문 생성 -> 쿼리 수행 -> 연결 닫기

  // DB에 연결
  JDBConnect jdbc = new JDBConnect();

  // 쿼리문 생성
  // 쿼리문에서 일부 값을 나중에 결정할 수 있게 해주는 매개변수로 ?로 표현한다.
  String sql = "select id, pass, name, regidate행 from member";
  Statement stmt = jdbc.conn.createStatement();

  // 쿼리 수행
  ResultSet rs = stmt.executeQuery(sql);

  // 결과 확인
  while (rs.next()){
    String id = rs.getString(1);
    String pw = rs.getString(2);
    String name = rs.getString("name");
    java.sql.Date regidate = rs.getDate("regidate");

    out.println(String.format("%s %s %s %s", id,pw,name,regidate)+"<br>");

  }

  // 연결 닫기
  jdbc.close();
%>

</body>
</html>
