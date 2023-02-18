package kr.board.entity;

// 게시판(Object) => 게시글 번호, 제목, 내용, 작성자, 작성일, 조회수 내용을 가짐

public class Board {

	// 기왕이면 테이블 이름가 같게 짓는다.
	// 필드명 = 속성 = 프로퍼티(property)

	private int b_seq; // 글 순번
	private String b_tilte; // 글 제목
	private String b_content; // 글 내용
	private String mem_id; // 글 작성자
	private String b_date; // 글 작성일자
	private int b_views; // 글 조회수
	private int b_like; // 글 좋아요 수 
	private String b_file; // 글 첨부파일
	
	
	
// Getter , Setter	
	public int getB_seq() {
		return b_seq;
	}
	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}
	public String getB_tilte() {
		return b_tilte;
	}
	public void setB_tilte(String b_tilte) {
		this.b_tilte = b_tilte;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getB_date() {
		return b_date;
	}
	public void setB_date(String b_date) {
		this.b_date = b_date;
	}
	public int getB_views() {
		return b_views;
	}
	public void setB_views(int b_views) {
		this.b_views = b_views;
	}
	public int getB_like() {
		return b_like;
	}
	public void setB_like(int b_like) {
		this.b_like = b_like;
	}
	public String getB_file() {
		return b_file;
	}
	public void setB_file(String b_file) {
		this.b_file = b_file;
	}



	
}
