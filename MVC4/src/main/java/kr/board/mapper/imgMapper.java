package kr.board.mapper;


import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Files;

@Mapper
public interface imgMapper {

	public void imgupload(Files file);

	public String selectUrl(String memId);


	
}
