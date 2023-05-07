<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/02
  Time: 2:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 요청을 받는 페이지에 쿠키를 적절하게 설정한 후 응답겍체에 주가 ---%>
<%
    String chkVal = request.getParameter("inactiveToday");
    // inactiveToday 매개변수의 값 얻기

    if (chkVal != null && chkVal.equals("1")){ // chkVal 값이 1 이면 쿠리를 생성해 응답객체에 추가
        Cookie cookie = new Cookie("PopupClose","off");// 쿠키 생성
        cookie.setPath(request.getContextPath());// 경로 설정
        cookie.setMaxAge(60*60*24);// 유지 기간 설정
        response.addCookie(cookie);// 응답 객체 추가
        out.println("쿠키 : 하루 동안 열지 않음");
    }
    // 하루동안 보지 않음을 체크하면 chkVal값은 1로 변경되고, PopupClose 값이 off 인 새로운 쿠키를 생성해 응답 객체에 추가한다.
    // popupMode에 off가 저장되어, 레이어 팝업창은 열리지 않게 된다.


%>


