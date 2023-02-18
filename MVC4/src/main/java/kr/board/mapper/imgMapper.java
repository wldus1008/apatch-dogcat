package kr.board.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.Files;

@Mapper
public interface imgMapper {

	public void imgupload(Files file);

	public String selectUrl(String memId);

	public Files getImg(String id);

	public Files checkId(int pet_seq);

	public void update(Files file);

	public List<Files> getImgList(String mem_id);
	public String select_pet(int pet_seq);


	
}
