package kr.board.mapper;


import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import kr.board.entity.DateData;
import kr.board.entity.ScheduleDto;

@Service
public interface ScheduleDao {
	public int schedule_add(ScheduleDto scheduleDto);
	public int before_schedule_add_search(ScheduleDto scheduleDto);
	public ArrayList<ScheduleDto> schedule_list(DateData dateData);
	
	/* 수정, 삭제를 위한 리스트 불러오기 */
	/* 조회하기 */
	public ScheduleDto get(int idx);
	
	/* 수정하기 */
	public int update(ScheduleDto scheduleDto);
	
	/* 삭제하기 */
	public int delete(ScheduleDto scheduleDto);
	
	
}