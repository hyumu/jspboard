package membership;

import common.JDBConnect;

public class MemberDAO extends JDBConnect {
    // DAO: 데이터 베이시가 접근하기 위한 객체로 JDBC를 통해 구현하며, 하나의 테이블에서 수행할 수 있는 CRUD를 전담하낟
    // CRUD : 생성(create), 읽기(read),갱신(update), 삭제(delete) 작업을 말한다.

    // 명시한 데이터베이스로의 연결이 완료된 DAO 객체 생성
    public MemberDAO(String drv,String url,String id,String pw){
        super(drv,url,id,pw);

    }
    // 명시한 아이디/패스워드와 일치하는 회원 정보를 반환 한다.
    public MemberDTO getMemberDTO(String uid, String upass){
        MemberDTO dto = new MemberDTO(); //회원 정보 DTO 객체 생성
        String query = "SELECT * FROM member where id=? and pass=?"; //쿼리문

        try{
            psmt = conn.prepareStatement(query); // 동적 쿼리 준비
            psmt.setString(1,uid); //쿼리문 첫 번째 인파라미터 값 설정
            psmt.setString(2,upass); //쿼리문 두 번째 인파라미터 값 설정
            rs = psmt.executeQuery(); // 쿼리문 실행

            // 결고 처리
            if(rs.next()){
                // 쿼리 결과로 얻은 회원 정보를 DTO객체에 저장
                dto.setId(rs.getString("id"));
                dto.setPass(rs.getString("pass"));
                dto.setName(rs.getString("3"));
                dto.setRegidate(rs.getString("4"));
            }

        }catch (Exception e){
            e.printStackTrace();

        }
        return dto; // dto 객체를 반환해준다.
    }
}
