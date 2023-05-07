<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/01
  Time: 3:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
 쿠키의 응용버전으로 팝업창
 팝업창은 회원가입 시 아이디 중복 체크나 간단한 공지사항을 띄어주는  용도르 자주 사용
 과거에는 별도의 URL을 가지는 팝업창을 주로 사용했지만, 불법 광고를 홍보하는 데 많이 악용되어 최근에는 레이어를 이용한 형태의 팝업을 주로 사용한다.
 es) 예를 들어 오늘 하루동안 보지 않기 등의 파업창
--%>
<%
String popupMode = "on"; // 레이어 팝업창 띄울지 여부
    // popupMode는 파업창을 띄울지를  알려주는 변순로, 값이 on을 경우 if절을 통해 파업창을 보여주도록 설정
%>
<html>
<head>
    <title>쿠키를 이용한 팝업 관리 ver 0.1</title>
    <style> /* CSS로 레이어 파업창의 위치 지정 */
    /* div 태그의 position 속성을 absolute로 설정하여 웹 브라우저상에서 절대 위치를 설정할 수 있게 해주는 속성값 */
        div#popup{
            position: absolute; top: 100px; left:50px; color: yellow;
            width: 270px; height: 100px; background-color: gray;
        }
        div#popup>div{
            position: relative; background-color: #ffffff; top: 0px;
            border: 1px solid gray; padding: 10px; color: black;
        }
    </style>

<%-- script 부분은 jQuery를 이용하는 자바스크립트 코드로 closeBtn인 요소(닫기 버튼)을 클릭하면 파업창을 숨기는 함수를 실행한다. --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $(function (){
            $('#closeBtn').click(function (){ /* 닫기 버튼(id = "closeBtn")을 누르면 */
                $('#popup').hide();/* 팝업창(id = "popup")을 숨김 처리합니다. */
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
