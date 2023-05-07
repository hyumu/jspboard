package membership;

import java.security.PrivateKey;

public class MemberDTO {
    // DTO : 계층 사이에서 데이터를 교환하기 위해 생성하는 객체
    // 별다른 로직 없이 속성과 그 속성에 접근하기 위한 게터 세터 메서드만 갖추어 VO라고도 한다.

    // DTO  클래스는 일반적으로 테이블당 하나씩 생성한다.
    private String id;
    private String pass;
    private String name;
    private String regidate;

    // 생성자
//    public MemberDTO(String id, String pass, String name, String regidate) {
//        this.id = id;
//        this.pass = pass;
//        this.name = name;
//        this.regidate = regidate;
//    }

    // getter/setter
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRegidate() {
        return regidate;
    }

    public void setRegidate(String regidate) {
        this.regidate = regidate;
    }
}
