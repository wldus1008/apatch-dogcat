package kr.board.mapper;

import kr.board.entity.Petinfo;

public interface PetMapper {

	void petJoin(Petinfo vo);

	Petinfo checkId(String memId);

	void update(Petinfo vo);
	
	

	
	
	
	
}
