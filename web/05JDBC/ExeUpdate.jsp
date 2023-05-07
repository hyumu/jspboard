<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/03
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
데이터 베이스 작업이라면 퀴리문(SQL)을 작성하고 실행하여, 그 결과를 얻어오는 일은 말한다.
JDBC에서 쿼리문은 java.sql.Statement 인터페이스로 표현되며, Statement 객체는 Connection 객체를 통해 얻어오도록 되어 있다.

executeUpdate() : INSERT,UPDATE,DELETE 쿼리문을 실행 할 때 사용
                  기존 레코드를 변화시키거나 새로운 레코드를 입력하는 쿼리문들로 실행 후 영향을 받아 행의 개수가 int로 반환한다.

executeQuery() : SELECT 쿼리문을 실행할 때 사용
                 SELECTE 는 기존 레코드를 조회하는 쿼리문으로 조회한 레코드들의 집합인 ResultSet 객체를 반환

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 동적 쿼리문으로 회원 추가--%>
<html>
<head>
    <title>JDBC</title>
</head>
<body>
<h2>회원 추가 데스트(executeUpdate() 사용)</h2>

<%
    // 순서
    // DB연결 -> 입력값 준비 -> 쿼리문 생성 -> 쿼리 수행 -> 연결 닫기

    // DB에 연결
    JDBConnect jdbc = new JDBConnect();

    // 테스틑용 입력값 준비
    String id = "test1";
    String pass = "1111";
    String name = "데스트 1호용";

    // 쿼리문 생성
    // 쿼리문에서 일부 값을 나중에 결정할 수 있게 해주는 매개변수로 ?로 표현한다.
    String sql = "insert into member values (?,?,?,SYSDATE())";
    PreparedStatement psmt = jdbc.conn.prepareStatement(sql);
    psmt.setString(1,id);
    psmt.setString(2,pass);
    psmt.setString(3,name);

    // 쿼리 수행
    int inResult = psmt.executeUpdate();
    out.println(inResult+"행이 입력되었습니다.");

    // 연결 닫기
    jdbc.close();
%>

</body>
</html>
