package kr.board.entity;

import java.sql.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ScheduleDto {
	
	String mem_id;
	int schedule_idx;
	int schedule_num;
	String schedule_subject;
	String schedule_desc;
	Date schedule_date;
	String schedule_share;
	String schedule_mycolor;
	
	public int getSchedule_idx() {
		return schedule_idx;
	}
	public void setSchedule_idx(int schedule_idx) {
		this.schedule_idx = schedule_idx;
	}
	
	public int getSchedule_num() {
		return schedule_num;
	}
	public void setSchedule_num(int schedule_num) {
		this.schedule_num = schedule_num;
	}
	
	
	public String getSchedule_subject() {
		return schedule_subject;
	}
	public void setSchedule_subject(String schedule_subject) {
		this.schedule_subject = schedule_subject;
	}
	
	
	public String getSchedule_desc() {
		return schedule_desc;
	}
	public void setSchedule_desc(String schedule_desc) {
		this.schedule_desc = schedule_desc;
	}
	
	public Date getSchedule_date() {
		return schedule_date;
	}
	public void setSchedule_date(Date schedule_date) {
		this.schedule_date = schedule_date;
	}
	
	/* 공유할 일정인지 아닌지 */
	public String getSchedule_share() {
		return schedule_share;
	}
	
	public void setSchedule_share(String schedule_share) {
		this.schedule_share =schedule_share;
	}
	
	/* 일정 색상 입출력 */
	public String getSchedule_mycolor() {
		return schedule_mycolor;
	}
	
	public void setSchedule_mycolor(String schedule_mycolor) {
		this.schedule_mycolor =schedule_mycolor;
	}
	
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	@Override
	public String toString() {
		return "ScheduleDto [schedule_idx=" + schedule_idx + ", schedule_num=" + schedule_num + ", schedule_subject="
				+ schedule_subject + ", schedule_desc=" + schedule_desc + ", schedule_date=" + schedule_date + ", schedule_share="+schedule_share
				+", schedule_mycolor="+schedule_mycolor +"]";
	}
}