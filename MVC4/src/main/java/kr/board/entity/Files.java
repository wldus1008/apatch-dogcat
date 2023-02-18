package kr.board.entity;





import lombok.Data;


@Data

public class Files {

	    private int file_seq; // 파일 순번
		private String file_name; // 파일 이름
	    private String file_real_name; // 파일 실제명
	    private int pet_seq;  // 펫 순번
	    private int arrange_order; // 사진 순번
	    
	    
	    
	    
	    
		public int getFile_seq() {
			return file_seq;
		}
		public void setFile_seq(int file_seq) {
			this.file_seq = file_seq;
		}
		public String getFile_name() {
			return file_name;
		}
		public void setFile_name(String file_name) {
			this.file_name = file_name;
		}
		public String getFile_real_name() {
			return file_real_name;
		}
		public void setFile_real_name(String file_real_name) {
			this.file_real_name = file_real_name;
		}
		public int getPet_seq() {
			return pet_seq;
		}
		public void setPet_seq(int pet_seq) {
			this.pet_seq = pet_seq;
		}
		public int getArrange_order() {
			return arrange_order;
		}
		public void setArrange_order(int arrange_order) {
			this.arrange_order = arrange_order;
		} 
	    
	    
	    
	   
	    
	   
	 
	
	

}

