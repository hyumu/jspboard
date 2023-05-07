package utils;

import javax.servlet.jsp.JspWriter; // 필요한 클래스 임포트

public class JSFunction {
    // 필요한 클래스 임포트
    public static void alertLocation(String msg,String url,JspWriter out){
        // JspWriter 클래스를 임포트
        // msg 알림창을 띄울 메세지 입력
        // url 알림창을 닫은 후 이동할 페이지
        // out 자바스크립트 코드를 삽입할 출력 스트림
        // JSP의 내장 객체를 클래스에서 사용하려면 이와 같이 매개변수로 받아야 한다.
        try{
            // 삽입할 자바스크립트 코드
            String script = ""+"<script>"+ "  alert('"+msg+"');"+ "  location.href='"+url+"';"+ "</script>";
            // 자바스크립트 코드를 out 내장 객체로 출력(삽입)
            out.println(script);
            // 자바스크립트를 문자열 형태로 선언한뒤 out 객체로 출력

        }catch (Exception e){

        }

    }
    public static void alertBack (String msg,JspWriter out) {
        try {
            String script = "" + "<script>" + "  alert('" + msg + "');" + "  history.back();" + "</script>";
            out.println(script);
        } catch (Exception e) {
        }
    }
}
