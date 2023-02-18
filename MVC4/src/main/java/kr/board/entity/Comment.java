package kr.board.entity;

import lombok.Data;

@Data
public class Comment {
	private int b_seq; // 원글 순번
	private int cmt_seq; // 댓글 순번
	private String cmt_content; //  댓글 내용
	private String cmt_date; // 댓글 작성일자
	private String mem_id; // 댓글 작성자
	
	
	
// Getter, Setter	
	public int getB_seq() {
		return b_seq;
	}
	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}
	public int getCmt_seq() {
		return cmt_seq;
	}
	public void setCmt_seq(int cmt_seq) {
		this.cmt_seq = cmt_seq;
	}
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public String getCmt_date() {
		return cmt_date;
	}
	public void setCmt_date(String cmt_date) {
		this.cmt_date = cmt_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	
	
	
	
}
