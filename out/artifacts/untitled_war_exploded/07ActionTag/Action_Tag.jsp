<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/05
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 액션 태그는 JSP의 표준 태그로, 페이지 사이에서 이동을 제어하거나 자바빈을 생성할때 주로 사용된다.
     특별한 선언 없이 <jsp:태그명> 형태로 사용된다.
     태그처럼 사용하지만 그 뒤에서는 JSP가 수행된다.
     JSP 코드와 마찬가지로 웹 애플리케이션 서버에서 처리된 후 결과만 출력되어 웹 브라우저에서 소스 보기를 해도 액션 태그는 보이지 않는다.

     액션 태그의 특징
     * XML 문법을 따른다.
     * 반드시 종료 태그를 사용
     * 액션 태그 사이에 주석을 사용하면 에러가 발생한다.
     * 액션 태그에 속성값을 부여 할때는 표현식<%=%>을 사용할 수 있다.

     <jsp:include> : 외부 파일을 현재 파일에 포함시킨다.
     <jsp:forward> : 다른 페이지로 요청 넘긴다.
     <jsp:useBean>,<jsp:setProperty>,<jsp:getPropetry> : 자바빈즈를 생성하고 값을 설정/추출한다.
     <jsp:param> : 다른 페이지로 매개 변수를 전달한다. <jsp:include>, <jsp:forward> 액션태그와 함께 사용한다.
--%>

<%--
    <jsp : include>:
    <jsp : include> 액션 태그는 외부 JSP파일을 현재 JSP 파일로 포함시키는 기능을 한다.
    비슷한 기능을 include 지시어와 비슷한 역할을 하지만 동작 방식에 약간의 차이가 있다.
--%>

<%--
    <jsp : forward>:
    포워드는 현재 페이제에서 들어온 요청을 다름 페잊로 보내는 기능
    RequestDispatcher 객체의 forward() 메서드 사용하는데
    액션테그도 같은 기능을 수행한다.
    forward 액션 태그를 만나기까지의 모든 출력을 제거하고 포워드할 페이지로 요청을 전달한다.
--%>
<%--
    // 자바 빈즈 생성
    <jsp : useBean>:
    <jsp : useBean> 액션 태그는 자바 빈즈를 생성하거나 설정할때 사용한다.
    자바빈즈는 데이터를 저장하기 위한 맴버 변수와 게케 세터 메서드로 이루어진 클래스이자.

    <jsp:useBean id="자바빈즈 이름" class="사용할 패키지와 클래스 명" scope="저장될 영역"/>

    // 멤버 변수 값 설정 /  추출
    // 몀버 변수의 값 설정
    <jsp:setProperty name = " 자바빈즈 이름" property="속성명(멤버 변수)" value = "설정할 값" />

    // 멤버 변수 값 추출
    <jsp:getProperty name = " 자바빈즈 이름" property="속성명(멤버 변수)" />
--%>
<%--
    <jsp : param>:
    <jsp : param> 액션 태그는 inclued 나 forward를 사용할때 다른 페이지에서 값을 전달해주는 액션태그이다.
    전달할 수 잇는 값은 String  뿐이고, 다른 타입의 객체를 전달할때는 내장 객체의 영역을 이용해야 한다.
--%>


