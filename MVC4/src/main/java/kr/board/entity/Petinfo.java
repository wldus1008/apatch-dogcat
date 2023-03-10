package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Petinfo {

	private String pet_name; // 펫 이름
	private int pet_age; // 펫 나이
	private String pet_gender; // 펫 성별
	private String mem_id; // 회원 아이디
	private int pet_seq; // 펫 순번
	private String pet_kind; // 펫 품종
	
	
// Getter, Setter
	public String getPet_name() {
		return pet_name;
	}
	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}
	public int getPet_age() {
		return pet_age;
	}
	public void setPet_age(int pet_age) {
		this.pet_age = pet_age;
	}
	public String getPet_gender() {
		return pet_gender;
	}
	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getPet_seq() {
		return pet_seq;
	}
	public void setPet_seq(int pet_seq) {
		this.pet_seq = pet_seq;
	}
	
	public String getPet_kind() {
		return pet_kind;
	}
	public void setPet_kind(String pet_kind) {
		this.pet_kind = pet_kind;
	}
	
	
	
	
}
