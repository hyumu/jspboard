<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/05
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- include 지시어와 액션 태그의 차이-->
<%
    // 포함할 파알의 경로
    String outerPath1 = "./inc/OuterPage1.jsp";
    String outerPath2 = "./inc/OuterPage2.jsp";

    // page 영역과 request 영역에 속성 저장
    pageContext.setAttribute("pAttr","동명왕");
    request.setAttribute("rAttr","온조왕");
%>
<html>
<head>
    <title>지이서와 액션 태그 동작 비교</title>
</head>
<h2>지시어와 액션태그 동적 비교</h2>
<!-- 지시어 방식 -->
<h3>지시어로 페이지 포함하기</h3>
<%@ include file="./inc/OuterPage1.jsp"%>
<p>외부 파일에 선언한 변수 : <%=newVar1%></p>
<!--
    지시어를 이용한 방식에서는 변수를 출력시킨다.
    지시어 방식에서는 실행하기 전에 파일을 포함시켜 컴파일을 진행하기 때문에 둘이 같은 페이지로 인식되어 변수가 출력된다.
 -->

<!-- 액션태그 방식 -->
<!--
    실행한 페에지와 인크루된 2페에지는  다른 페이지 처리 임으로 액션태그는 page영역은 공유되지 않는다.
-->
<h3>액션 태그로 페이지 포함하기</h3>
<jsp:include page="./inc/OuterPage2.jsp" />
<jsp:include page="<%=outerPath2%>" />
<p> 외부파일에 선언한 변수 : <%-- newVar2 --%></p>
<!--
    jsp 액션태그 모드 페이지를 포함시키는 코드로 문제 없이 실행된다.
    하지만 변수를 출력시킬때 선언되지 않은 변수라는 에러를 발생시킨다.
    그 이유는 액션 태그 방식에서는 실행의 흐름만 이동시켜 싱형된 결과값만 가져와 포함시키기 때문에 실행된 결과에는 jsp 코드가 존재하지 않아 실행되지 않는다.
-->

</html>
