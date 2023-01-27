package kr.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Files;
import kr.board.entity.Petinfo;
import kr.board.mapper.PetMapper;

@RestController
public class PetController {

	@Autowired
	private PetMapper petmapper;
	
	@RequestMapping("petinfo")
	public void register(Petinfo vo){
		System.out.println("[petinfo Controller 들어옴]");
		
		Petinfo update = petmapper.checkId(vo.getMemId());
        if(update != null) {
        	petmapper.update(vo);
        }else {
        	petmapper.petJoin(vo);		        	
        }
		
		
		
	}
}
