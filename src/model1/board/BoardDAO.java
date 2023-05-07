package model1.board;

import common.JDBConnect;

import javax.servlet.ServletContext;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public class BoardDAO extends JDBConnect {
    // 생성자
    // JDBC 클래스를 상속한후 생성자에서는 부모 클래스의 생성자를 호출한다.
    // application 내장객테를 통해 web.xml에 정의해둔 Mysql 접속 정보를 가져와 DB연
    public BoardDAO(ServletContext application){
        super(application);
    }

    // 검색 폼 만들기
    // 게시물 개수 세기
    // 검색 조건에 맞는 게시물의 개수를 반환
    // selectCount 메소드 : board 데이블에 저장된 게시물의 개수 반환(목록에서 번호 출력)
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0; // 게시물 수를 담을 변수

        // 게시물 수를 얻어오는 쿼리문 작성
        String query = "SELECT COUNT(*) FROM board";
        if (map.get("searchWord") != null) {
            query += "WHERE" + map.get("searchField") + "" + "LIKE'%" + map.get("searchWord") + "%'";
        }
        try {
            stmt = conn.createStatement(); // 쿼리문 생성
            rs = stmt.executeQuery(query); // 쿼리 실행
            rs.next(); // 첫 행으로 커서 이동
            totalCount = rs.getInt(1); // 첫번째 칼럼의 값을 가져옴

        } catch (Exception e) {
            System.out.println("게시물 수를 구하는 중 예외 발생");
            e.printStackTrace();
        }
        return totalCount;

    }

    // 게시물 목록 가져오기
    // 검색 조건에 맞는 게시물 목록 반환
    public List<BoardDTO>selectList(Map<String , Object> map){
        List<BoardDTO> bbs = new Vector<BoardDTO>();

    }



}
