package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Member;

@Mapper
public interface MemberMapper {

	
	


	// 회원정보 수정
	public void memUpdate(Member vo);
	
	
	    
	

	
}
