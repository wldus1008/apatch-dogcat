package kr.board.entity;

import com.fasterxml.jackson.annotation.JsonAutoDetect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {

	
	// 어떤 객체가 잘 설계되었다고 말할 수 있는가?
	// 1. 정보은닉을 했는지

	private int memNo;
	private String memId;
	private String memPw;
	private String memName;
	


	// 2. 멤버 변수에 데이터를 넣어주고, 꺼내주는 메소드가 있는지
	// getter,setter
		
	public int getMemNo() {
		return memNo;
	}
	
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	public String getMemId() {
		return memId;
	}
	
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}

	
	
	// 3. 객체가 가지고 있는 데이터 전체를 String으로 리턴해주는 메소드가 있는지
	//    	디버깅 요소가 작용하는 toString()
	
	@Override
	public String toString() {
		return "Member [memId=" + memId + ", memPw=" + memPw + ", memName=" + memName + "]";
	}

	
	
	// 4. (선택적인 사항) 생성자 메소드 만들었는지
	
	
	
	
	
	
	
	
	
	
	
	
}
