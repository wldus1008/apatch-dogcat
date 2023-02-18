package kr.board.mapper;

import java.util.List;

import kr.board.entity.Pet_profile;
import kr.board.entity.Petinfo;

public interface PetMapper {

	void petJoin(Petinfo vo);

	Petinfo get_seq(Petinfo vo);
	
	void update(Petinfo vo);

	List<Pet_profile> pet_profile(String memId);


	

	

	
	

	
	
	
	
}
