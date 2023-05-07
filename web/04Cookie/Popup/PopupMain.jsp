<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/02
  Time: 1:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%--쿠키 기능을 추가해서 제대로 동작하는 페이지 생성하기(오늘 하루동안 열지 않음 실행)--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String popupMode = "on";

    Cookie[] cookies = request.getCookies(); // 쿠키를 읽어 popupMode 값을 설정한다.
    if (cookies != null){
        for(Cookie c : cookies){
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            if (cookieName.equals("PopupClose")){// "PopupClose 쿠키가 존재하면
                popupMode = cookieValue; // popupMode 값을 갱신
            }
        }
    }

%>
<html>
<head>
    <title>쿠키를 이용한 파업관리</title>
    <style>
        div#popup{
            position: absolute;top: 100px; left: 100px; color: yellow;
            width: 300px; height: 100px; background-color: gray;
        }
        div#popup>div{
            position: relative;background-color: #ffffff;top: 0px;
            border: 1px solid gray;padding: 10px; color: black;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $(function (){
            $('#closeBtn').click(function (){ /* 닫기 버튼(id = "closeBtn")을 누르면 싫행  */
                $('#popup').hide();/* 팝업창(id = "popup")을 숨김 처리합니다. */
                /* 체크여부 */
                var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
                /* inactiveToday에 체크된 체크박스의 값을 읽어 chkVal 변수에 저장한다. */
                /* 즉 하루 동안 보지 않음 체크박스를 체크하면 chkVal 변수에 1이 저장되고 체크하지 않으면 아무 값도 저장되지 않는다. */


                $.ajax({ /* jQuery의 ajax() 함수로 비동기 요청 */
                    url : './PopupCookie.jsp', /* 요청을 보낼 페이지의 URL / 기본값은 현재페이지 */
                    type : 'get', /* 'get','post'등 HTTP 메서드를 지정한다. / get 방식으로 호출 */
                    data : {inactiveToday : chkVal}, /* 서버로 보낼 데이터 */
                    dataType : "text", /* 서버로부터 받을 '응답' 데이터 타입 */
                    success : function (resDate){ /* 요청 성공 시 호출되는 콜백함수 */
                        if (resDate !='') /* 응답 데이터가 있다면 */
                            location.reload(); /* 페이지를 새로고칩하낟. */
                    }

                })
            })
        })
    </script>
</head>
<body>
<h2>팝업 메인 페이지(ver 0.1)</h2>
<%
    for(int i=1;i<=10;i++){
        out.println("현재 팝업창은"+popupMode+"상태입니다.<br>");
    }
    if (popupMode.equals("on")){
        // popupMode의 값이 on을 경우 파업팡을 실행한다.
%>
<%-- 공지사항 파업 화면 --%>
<div id="popup">
    <h2 align="center">공지사항 입니다.</h2>
    <div align="right"><form name="popFrm">
        <input type = "checkbox" id="inactiveToday" value="1">
        하루 동안 열지 않음
        <input type="button" value="닫기" id = "closeBtn">
        <%-- 아직 쿠키를 설정하지 않앗 하루동안 열지않음이 효과가 없다. --%>
    </form></div>
</div>
<%
    }

%>

</body>
</html>
