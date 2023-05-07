<%@ page import="utils.CookieManager" %>
<%@ page import="utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/02
  Time: 3:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String user_id = request.getParameter("user_id");
  String user_pw = request.getParameter("user_pw");
  String save_check = request.getParameter("save_check");

  if ("must".equals(user_id)&&"1234".equals(user_pw)){
    // 로그인 성공
    if (save_check!= null && save_check.equals("Y")) {
      CookieManager.makeCookie(response,"loginId",user_id,86400);
    }else {
      // 로그인 싶패시 저장된 쿠키를 삭제한다.
      CookieManager.deleteCookie(response,"loginId");
    }
    JSFunction.alertLocation("로그인이 성공했습니다.","IdSaveMain.jsp",out);
  }else {
    JSFunction.alertBack("로그인이 실패했습니다.",out);
  }
%>
