package kr.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Board;
import kr.board.entity.Member;
import kr.board.entity.Petinfo;
import kr.board.entity.dog;

// 우리가 알고 있는 DAO와 같은 기능
// Mapper라고 하는 역할임을 알려주는 주석
//@Repository 사용가능  @Mapper
@Mapper
public interface BoardMapper  {

	
	// Java코드와 SQL문(xml)을 따로 관리
	// 이 둘을 연결 시키기 때문에 mapping를 한다고 표현
	// DAO라고 안부르고 Mapper라고 부르게 됨
	
	// 일을 하는 메소드
	// --> 이제 일을 Mysbatis가 할것임, 히카리CP를 통해서 
	// 메소드 안에 시킬 일이 없음
	// 추상 메소드 ---> class파일이 아니라 interface로 만들어줘야한다!!!
	// 컨트롤러의 메소드 이름 - mapper interface의 메소드 이름 - xml에서 id이름
	public List<Board> boardList();

	public void boardInsert(Board vo);

	public Board boardContent(int theIdx);

	public void boardUpdate(Board vo);

	public void boardDelete(int idx);

	public void boardContentUpdate(Board vo);
	
	public List<dog> dogList();
	
	public void dog(dog vo);
	
	public void adminboardInsert(dog vo);
	
	public void adminDelete(int idx);
	
	public void adminboardUpdate(dog vo);
	
	public dog adminboardContent(int theIdx);
	
	public void adminboardContentUpdate(dog vo);
	
	public Member memberLogin(Member mvo);
	
	
	// 만약에 sql문을 xml로 관리를 안하는 경우
	// sql구문 종류별로 주석을 달아서 sql문 직접 입력\
	// parameterType, resultType 지정하지 않아도 인식
	@Update("update board set count=count+1 where idx=#{idx}")
	public void updateCount(int idx);


	
	
	@Update("update adminboard set count=count+1 where idx=#{idx}")
	public void adminboardCount(int idx);

	
	
	// SQL문을 관리하는 XML만들 때 주의할 점!!!
	// mapper 인터페이스 파일의 이름과 xml의 파일 이름을 똑같이 해야한다.
	
	
}
