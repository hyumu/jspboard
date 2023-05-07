<%@ page import="membership.MemberDTO" %>
<%@ page import="membership.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/04
  Time: 10:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 로그인 처리 JSP --%>
<%
    // 로그인 폼으로부터 받은 아이다와 패스워드
    String userId = request.getParameter("user_id");
    String userPwd = request.getParameter("user_pw");

    //web.xml 에서 가져온 데이터 베이스 연결 정보
    String MysqlDriver = application.getInitParameter("MysqlDriver");
    String MysqlURL = application.getInitParameter("MysqlURL");
    String MysqlId = application.getInitParameter("MysqlId");
    String MysqlPwd = application.getInitParameter("MysqlPwd");

    // 회원 테이블 DAO를 통해 회원 정보 DTO 획득
    MemberDAO dao = new MemberDAO(MysqlDriver,MysqlURL,MysqlId,MysqlPwd);
    MemberDTO memberDTO = dao.getMemberDTO(userId,userPwd);
    dao.close();

    // 로그인 성공 여부에 따른 처지
    if (memberDTO.getId() != null){
        // 로그인 성공
        // session 영역에 아이디와 이름을 저장한 후 로그인 페이지로 이동하여 속성값이 웹 브라이주거를 닫을 때 까지는 모든 페이지에서 공유된다.
        session.setAttribute("UserId",memberDTO.getId());
        session.setAttribute("UserName",memberDTO.getName());
        response.sendRedirect("LoginForm.jsp");
    }else {
        // 로그인 실패
        request.setAttribute("LoginErrMsg","로그인 오류입니다.");
        request.getRequestDispatcher("LoginForm.jsp").forward(request,response);
    }

%>
