package kr.board.entity;

import lombok.Data;

@Data
public class Pet_profile {
	
	private String petName;
	private String petAge;
	private String petgender;
	private String memId;
	private int petNo;
    private int fno;
    private String filename;     //저장할 파일
    private String fileOriName;  //실제 파일
    private String fileurl;
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetAge() {
		return petAge;
	}
	public void setPetAge(String petAge) {
		this.petAge = petAge;
	}
	public String getPetgender() {
		return petgender;
	}
	public void setPetgender(String petgender) {
		this.petgender = petgender;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getPetNo() {
		return petNo;
	}
	public void setPetNo(int petNo) {
		this.petNo = petNo;
	}
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFileOriName() {
		return fileOriName;
	}
	public void setFileOriName(String fileOriName) {
		this.fileOriName = fileOriName;
	}
	public String getFileurl() {
		return fileurl;
	}
	public void setFileurl(String fileurl) {
		this.fileurl = fileurl;
	}
	@Override
	public String toString() {
		return "Pet_profile [petName=" + petName + ", petAge=" + petAge + ", petgender=" + petgender + ", memId="
				+ memId + ", petNo=" + petNo + ", fno=" + fno + ", filename=" + filename + ", fileOriName="
				+ fileOriName + ", fileurl=" + fileurl + "]";
	}
    
    
    
    
}
