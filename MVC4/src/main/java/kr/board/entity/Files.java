package kr.board.entity;




import lombok.Data;

@Data

public class Files {

	    private int fno;
		private String memId;
	    private String filename;     //저장할 파일
	    private String fileOriName;  //실제 파일
	    private String fileurl;
	    
	    
	    
		public int getFno() {
			return fno;
		}
		public void setFno(int fno) {
			this.fno = fno;
		}
		public String getMemId() {
			return memId;
		}
		public void setMemId(String memId) {
			this.memId = memId;
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
	    
	    
	    
	   
	 
	
	

}

