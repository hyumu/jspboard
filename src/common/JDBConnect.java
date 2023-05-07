package common;

import javax.servlet.ServletContext;
import java.sql.*;
//import javax.servlet.ServletContextletCon;

public class JDBConnect {
    public Connection conn; // 데이터베이스 연결
    public Statement stmt; // 인파라미터가 없는 정적 쿼리문 실행
    public PreparedStatement psmt; // 인파라미터가 있는 동적 쿼리문 실행
    public ResultSet rs; // Select 쿼리문의 결과 저장

    // 기본 생성자
    public JDBConnect(){

        try{//JDBC 드라이버 로들

            // forName :  new 키워드 대신 클래스명을 통해 직접 객체를 생성 후 메몰에 로드하는 메서드
            Class.forName("com.mysql.jdbc.Driver");

            // 데이터베이스 연결
            String url = "jdbc:mysql://localhost:3306/must?useSSL=false&characterEncoding=UTF-8&serverTimezone=UTC";
            String id = "root";
            String pwd = "qwe12345";
            conn = DriverManager.getConnection(url,id,pwd);

//            String server = "localhost"; // MySQL 서버 주소
//            String database = "must"; // MySQL DATABASE 이름
//            String user_name = "root"; //  MySQL 서버 아이디
//            String password = "qwe12345"; // MySQL 서버 비밀번호
//            conn = DriverManager.getConnection("jdbc:mysql://" + server + "/" + database , user_name, password);
//            System.out.println("정상적으로 연결되었습니다.");


            System.out.println("DB 연결 성공(기본생성자)");
        }
        catch (Exception e){
//            System.out.println("연결 실패");
            e.printStackTrace();
        }

    }
    // 연결 해제
    public void close(){
        try{
            if (rs !=null) rs.close();
            if (stmt !=null) stmt.close();
            if (psmt !=null) psmt.close();
            if (conn !=null) conn.close();

            System.out.println("JDBC 자원 해제");

        }catch (Exception e){
            e.printStackTrace();

        }
    }

    // web.xml에 입력후 내장 객체를 통해 불려오기
    public JDBConnect(String driver, String url, String id, String pwd){
        try{
            Class.forName(driver);
            conn = DriverManager.getConnection(url,id,pwd);

            System.out.println("DB연결 성공(인수 생성자1)");
        }catch (Exception e){
            e.printStackTrace();
        }

    }

    // 컨텍스트 초기화 매개변수를 생성자에게 직접 가져올 수 있도록 정의

    public JDBConnect(ServletContext application){
        try{
            // JDBC 드라이버 로드
            String driver = application.getInitParameter("MysqlDriver");
            Class.forName(driver);


            // DB연결
            String url = application.getInitParameter("MysqlURL");
            String id = application.getInitParameter("MysqlId");
            String pwd = application.getInitParameter("MysqlPwd");
            conn=DriverManager.getConnection(url,id,pwd);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
