package kr.board.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Petinfo;
import kr.board.mapper.PetMapper;

@RestController
public class PetController {

	@Autowired
	private PetMapper petmapper;
	
	@RequestMapping("petinfo")
	public int register(Petinfo vo, HttpServletRequest request,Model model){
		System.out.println("[petinfo Controller 들어옴]");
		System.out.println("mem_id : "+vo.getMem_id());
		System.out.println("pet_kind : "+vo.getPet_kind());
		
		Petinfo get_seq = petmapper.get_seq(vo); // mem_id 반려동물 조회
		if(get_seq == null) {
			petmapper.petJoin(vo);  // 없으면 등록
		}else {
			vo.setPet_seq(get_seq.getPet_seq());
			petmapper.update(vo); // 있으면 Update
		}
		get_seq = petmapper.get_seq(vo);
		System.out.println(get_seq.getPet_seq());
		System.out.println("pet info 성공");
		get_seq = petmapper.get_seq(vo); // mem_id 반려동물 조회
		System.out.println(get_seq.getPet_seq());
		/*
		 * if(update != null) { petmapper.update(vo); }else { petmapper.petJoin(vo); }
		 */
		return get_seq.getPet_seq();
	}
}
