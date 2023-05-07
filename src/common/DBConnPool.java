package common;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.security.PublicKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnPool {

    // 커넥션 풀
    // 웹은 클라이언트의 요청에 서버가 응답하는 구조로 요청이 있을때만다 DB와 새로 연결했다가 해제 한다면 DB작업을 위해 웹 서버가
    // Connection 객체를 생설할 때마다 네트워크 토신이 이루어지면서 사용자 인증 같은 시간이 걸리는 작업을 반복한다.
    // 즉 빈번한 연결과 해제는 시스템 성능에 큰 영향을 미친다.
    // 이 문제를 해결하기 위해 connection pool 을 사용한다.
    // 커넥션 풀은 Connection 객체를 pool 에 넣어 놓고, 요청일 있을 때마다 이미 생성된 객체를 가져다 사용햐는 기법으로
    // 사용이 완료된 객채는 연결을 해체하는 것이 아니라 풀에 반납하여 필요할때 재사용한다.

    // 커녁션 풀과 JNDI
    // jsp 프로그래밍 시 커넥션 풀은 직접 만들어 사용하지 않고 WAS 가 제공하는 것을 이용하는 것이 좋다
    // WAS(톰캣) 하나에 여러 개의 웹 애플리케이션을 구동시키는 경우가 많은데 애플리케이션마다 자원을 따로 관리하면 유지 관리가 어렵다.
    // 대부분의 WAS는 커넥션 풀을 비롯한 여러 자원을 JNDI 서비스로 제공한다.

    // JNDI
    // JNDI는 자바 소프트웨어에서 객체나 데이터를 전체 경로를 몰라도 '이름'만으로 찾아 쓸수있는 디렉터리 서비스 이다.
    // 이름과 실체 객테와의 연결은 외부의 설정 파일에서 관리하므로 다른 객체로 교체하거나 세부 설저을 바꿀 때는 소스 코드를 수정하고 다시 컴파일 할 필요가 없다.

    // 톰켓 파일엘서 server.xml, content.xml 내용 추가
    public Connection conn;
    public Statement stmt;
    public PreparedStatement psmt;
    public ResultSet rs;

    // 기본 생성자
    public DBConnPool(){
        try{
            // 커넥션 풀(DataSource) 얻기
            Context initCtx = new InitialContext();
            Context ctx = (Context) initCtx.lookup("java:comp/env");
            DataSource source =(DataSource) ctx.lookup("dbcp_mysql");

            // 커넥션 풀을 통해 연결 얻기
            conn = source.getConnection();

            System.out.println("db 커넥션 풀 연결 성공");
        }catch (Exception e){
            System.out.println("db 커넥션 풀 연결 실패");
        }
    }

    // 연결 해제(자동 반납)
    public void close(){
        try{
            if (rs !=null) rs.close();
            if (stmt !=null) stmt.close();
            if (psmt !=null) psmt.close();
            if (conn !=null) conn.close();

            System.out.println("DB 커넥션 자원 해제");

        }catch (Exception e){
            e.printStackTrace();

        }
    }
}
