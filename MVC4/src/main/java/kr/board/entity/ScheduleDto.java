package kr.board.entity;


import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ScheduleDto {
	private int sche_seq;
	private String mem_id;
	private String sche_title;
	private String sche_content;
	private String sche_s_date;
	private String sche_e_date;
	private String color;
	
	
// Getter , Setter	
	public int getSche_seq() {
		return sche_seq;
	}
	public void setSche_seq(int sche_seq) {
		this.sche_seq = sche_seq;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getSche_title() {
		return sche_title;
	}
	public void setSche_title(String sche_title) {
		this.sche_title = sche_title;
	}
	public String getSche_content() {
		return sche_content;
	}
	public void setSche_content(String sche_content) {
		this.sche_content = sche_content;
	}
	public String getSche_s_date() {
		return sche_s_date;
	}
	public void setSche_s_date(String sche_s_date) {
		this.sche_s_date = sche_s_date;
	}
	public String getSche_e_date() {
		return sche_e_date;
	}
	public void setSche_e_date(String sche_e_date) {
		this.sche_e_date = sche_e_date;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	
}