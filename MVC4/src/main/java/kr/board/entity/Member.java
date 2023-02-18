package kr.board.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {

	
	// 어떤 객체가 잘 설계되었다고 말할 수 있는가?
	// 1. 정보은닉을 했는지

	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_type;
	
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_type() {
		return mem_type;
	}
	public void setMem_type(String mem_type) {
		this.mem_type = mem_type;
	}
	
	
	@Override
	public String toString() {
		return "Member [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name + ", mem_type=" + mem_type
				+ "]";
	}
	
	

	// 2. 멤버 변수에 데이터를 넣어주고, 꺼내주는 메소드가 있는지
	// getter,setter
		
	
	
	
	// 4. (선택적인 사항) 생성자 메소드 만들었는지
	
	
	
	
	
	
	
	
	
	
	
	
}
