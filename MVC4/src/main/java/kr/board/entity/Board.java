package kr.board.entity;

// 게시판(Object) => 게시글 번호, 제목, 내용, 작성자, 작성일, 조회수 내용을 가짐

public class Board {

	// 기왕이면 테이블 이름가 같게 짓는다.
	// 필드명 = 속성 = 프로퍼티(property)
	private int idx;
	private String title;
	private String content;
	private String writer;
	private String indate;
	private int count;
	private String memId;
	
	
	// 스프링에서는 생성자 만들 필요 없이
	// Board 객체의 내용이면 담아줄 수 있다.
	
	// getter, setter만 만들기
	
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	
	
	
}
