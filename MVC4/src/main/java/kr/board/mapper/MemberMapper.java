package kr.board.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Member;

@Mapper
public interface MemberMapper {

	
	
	public void memberJoin(Member Membervo);


	public void memUpdate(Member vo);
	
	// 회원정보 수정
	
	    
	

	
}
