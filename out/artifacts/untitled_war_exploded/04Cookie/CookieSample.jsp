<%--
  Created by IntelliJ IDEA.
  User: seosujin
  Date: 2023/05/01
  Time: 2:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>1. 쿠키란?</h3>
<p>
    쿠키는 클라이언트의 상태 정보를 유지하기 위한 기술<br>
    상태 정보를 클이언트(웹 브라우저)에 키(key)와 값(value) 형태로 저장했다가 다음 요철 시 저장된 쿠키를 함께 전송한다.<br>
    웹서버는 브라우저가 전송한 쿠키로부터 필요한 데이터를 읽어올 수 있다.
<hr>
<h3>2. 동작 메커니즘</h3>
<p>
    1. 클라이언트가 서버에 요청을 보낸다.<br>
    2. 서버가 쿠키를 생성하여 HTTP응답 헤더에 실어 클라이언트에 전송한다.<br>
    3. 클라이언트는 쿠키를 받아 저장 (쿠키가 클라이언트에만 저장된 상태이므로 서버는 아직 쿠키를 사용할 수 없다.)<br>
    4. 클라이언트는 다음번 요청시 저장해둔 쿠키를 HTTP 요청 헤더에 실어 보냅니다.<br>
    5. 서버는 쿠키의 정보를 읽어 필요한 작업을 수행한다.<br>
    쿠키가 처음 만들어진 시점에서는 서버가 쿠키를 아직 읽을 수 없다. 다음 요청 때부터 클라이언트가 전송해주기 때문이다.<br>
    따라서 페이지를 새로고침하거나, 다시 접속해야 서버가 쿠키를 읽어 활용한다.<br>
    서버에서 생성한 쿠키를 바로 읽을 수 없는 것이 쿠키의 독특한 메커니즘이다.
</p>
<hr>
<h3>3. 속성과 API</h3>
<h4>속성</h4>
<p>
    * 이름(name) : 쿠키를 구별하는 이름<br>
    * 값(value) : 쿠키에 저장할 실제 데이터<br>
    * 도메인(domain) : 쿠키를 적용할 도메인<br>
    * 경로(path) : 쿠키를 적용할 경로<br>
    * 유지기간(max age) : 쿠키를 유지할 기간<br>
</p>
<hr>
<h4>설정 메소드</h4>
<p>
    * void setValue(String value)<br>
    : 쿠키의 값을 설정, 문자열로 입력하고, 쉼표(,), 세미콜론(;) 같은 문자는 포함 할 수 없다.<br>
    ------------------------------------<br>
    * void setDomain(String domain)<br>
    : 쿠키에 적용할 도메인 설정, setDomain(".nakja.co.kr")로 설정하면 www.nakja.co.kr등 쿠키에 적용<br>
    ------------------------------------<br>
    * void setPath(String path)<br>
    : 쿠키가 적용될 경로를 지정, 지정한 경로와 그 하위 경로에까지 적용<br>
    ------------------------------------<br>
    * void setMaxAge(int expire_seconds)<br>
    : 쿠키가 유지될 기간을 초 단위로 설정, 기간을 설정하지 않으면 웹 브라우저가 닫으면 쿠키도 같이 삭제<br>
    ------------------------------------<br>
    이름을 설정하는 setName()이 없는 이유는 쿠키의 이름을 생성자(constructor)를 통해 설정하고, 생성 후에는 더 이상 이름을 변경할 수 없기 때문이다.<br>
    ------------------------------------<br>
    생성자 생성<br>
    new Cookie(String name, String value) : 이름과 값을 받아 새로운 쿠키 생성
</p>
<hr>
<h4>읽는 메소드</h4>
<p>
    * String getName()<br>
    : 쿠키의 이름을 반환.<br>
    ------------------------------------<br>
    * String getValue()<br>
    : 쿠키값을 반환<br>
    ------------------------------------<br>
    * String getDomain()<br>
    : 쿠키가 적용되는 도메인을 반환<br>
    ------------------------------------<br>
    * String getPath()<br>
    : 쿠키의 적용 경로를 반환. 단, setPath()로 설정한 적이 없다면 null을 반환한다.<br>
    ------------------------------------<br>
    * int getMaxAge()<br>
    : 쿠키의 유지 기간을 반환. 단, setMaxAge()로 설정한 적이 없다면 -1을 반환한다.<br>
</p>
<hr>
</body>
</html>
