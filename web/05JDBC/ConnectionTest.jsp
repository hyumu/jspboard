<%@ page import="common.JDBConnect" %>
<%@ page import="common.Mysql" %>
<%@ page import="common.DBConnPool" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/03
  Time: 4:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>db 연결 테스트</title>
</head>
<body>
<h2>JDBC 테스트 1</h2>
<%
    JDBConnect jdbc1 = new JDBConnect();
    jdbc1.close();
%>
<h2>JDBC 테스트 2 </h2>
<%
    String driver = application.getInitParameter("MysqlDriver");
    String url = application.getInitParameter("MysqlURL");
    String id = application.getInitParameter("MysqlId");
    String pwd = application.getInitParameter("MysqlPwd");

    JDBConnect jdbc2 = new JDBConnect(driver,url,id,pwd);
    jdbc2.close();

%>
<h2>JDBC 테스트 3 </h2>
<%
  JDBConnect jdbc3 = new JDBConnect(application);
  jdbc3.close();

%>

<h2>커넥션 풀 테스트 </h2>
<%
    DBConnPool pool = new DBConnPool();
    pool.close();

%>

</body>
</html>
