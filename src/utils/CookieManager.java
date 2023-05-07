package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {
    // 명시한 이름, 값 유지 기간 조건으로 새로운 쿠키를 생성한다.
    // makeCookie 메소드는 4개의 매개변수를 받아 쿠키를 만들어 응답 헤더에 추가한다.
    // 쿠키를 생성한 후 경로와 유지 기간을 설정하여 웹 애플리케이션 전체에서 사용되는 쿠키를 만든다. 응답헤더레 추가해 쿨라이언트로 쿠키를 전송
    public static void makeCookie(HttpServletResponse response, String cName, String cValue, int cTime){
        Cookie cookie = new Cookie(cName,cValue); // 쿠키 생성
        cookie.setPath("/"); // 경로 설정
        cookie.setMaxAge(cTime); // 유지 기간 설정
        response.addCookie(cookie); // 응답 객체에 추가

    }

    // 명시한 이름의 쿠키를 찾아 그 값을 반환한다.
    // 명시한 쿠키의 값을 읽어 반환하는 메소드
    // request 내장 겍체로부터 클라이언트가 보내온 목록을 받아 그 cName과 이름이 같은 쿠키가 있을때 그 값을 반환한다.
    public static String readCookie(HttpServletRequest request, String cName){
        String cookieValue = ""; // 반환 값

        Cookie[] cookies = request.getCookies();
        if (cookies !=null){
            for (Cookie c:cookies){
                String cookieName = c.getName();
                if (cookieName.equals(cName)){
                    cookieValue=c.getValue(); // 반환값 갱신
                }
            }
        }
        return cookieValue;
    }

    // 기존 쿠키를 삭제하는 메서드
    // 쿠키 삭제는 쿠키 생성시 값은 빈 문자열로 유지기간은 0으로 부여하면 되어 makeCookie메서드를 활용한다.
    public static void deleteCookie(HttpServletResponse response, String cName){
        makeCookie(response,cName,"",0);
    }
}
