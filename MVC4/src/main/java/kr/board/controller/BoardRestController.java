package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Board;
import kr.board.entity.Member;
import kr.board.entity.dog;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.MemberMapper;

// 이 컨트롤러는 그냥 POJO가 아니라
// json 데이터 통신을, 비동기 통신을 위해서 쓰는 컨트롤러

@RestController
public class BoardRestController {
	
	// 의존성 주입(DI)
	@Autowired
	private BoardMapper mapper;
	
	@Autowired
	private MemberMapper mmapper;
	
	// Rest api, Restful 규약 : 데이터 전송방식
	// 요청의 종류에 따라 전송방식을 변경해서 보내줌
	// get, post, put(update), delete
	// http://localhost:8084/mvc/board --> 어떤 요청이든지 데이터만 담겨있는 상태
	// 데이터 보내는 전송방식만 정해주면 데이터를 각각 방식으로 처리를 할 수 있음
	
	
	
	// @ResponseBody 써주지 않아도 @RestController이기때문에 jsp 이름 보내지 않음
	@GetMapping("/board")
	public List<Board> boardajaxList() {
		
		
		List<Board> list = mapper.boardList();
		
		return list;
		
		
	}
	
	// title= ____&content=______&writer=_____
	// 파라미터 수집을 해줘야하는데 Board객체에 알아서 바구니처럼 가지고 다닐 수 있음
	@PostMapping("/board")
	public void boardAjaxInsert(Board vo) {
		mapper.boardInsert(vo);
		
	}
	
	
	
	
	
	
	@DeleteMapping("/board/{idx}")
	public void boardAjaxDelete(@PathVariable int idx) {
		
		mapper.boardDelete(idx);
		
	}
	
	
	// idx,content를 json형식으로 보내오고 있기 때문에
	// 객체(Board)로 묶여있는게 아니기 때문에 @RequestBody
	@PutMapping("/board")
	public void boardAjaxUpdate(@RequestBody Board vo) {
		// 전에는 title,content,writer 등등 여러개 수정하는 메소드를 만듦
		// 이제는 content만 바꾸는 메소드를 새로 만들어야함
		
		mapper.boardContentUpdate(vo);
	}
	
	@GetMapping("/updateCount/{idx}")
	public Board updateCount(@PathVariable int idx) {
		
		mapper.updateCount(idx);
		
		// 해당 idx를 가지는 게시글 내용
		Board vo = mapper.boardContent(idx);
		
		// 새로 +1된 조회수를 출력하기 위해서 데이터 보냄
		return vo;
	}
	
	
	
	@RequestMapping(value="/memUpdate", method=RequestMethod.POST)
	//@PostMapping("/memUpdate")
	public void memUpdate(@RequestBody Member vo) {
		// 전에는 title,content,writer 등등 여러개 수정하는 메소드를 만듦
		// 이제는 content만 바꾸는 메소드를 새로 만들어야함
		System.out.println("update 컨트롤러는 들어옴");
		mmapper.memUpdate(vo);
		
		
		
	}
	
	@RequestMapping(value="/dog", method=RequestMethod.POST)
	public void dog(@RequestBody dog vo ) {
		// 전에는 title,content,writer 등등 여러개 수정하는 메소드를 만듦
		// 이제는 content만 바꾸는 메소드를 새로 만들어야함
		System.out.println("123 컨트롤러는 들어옴");
		
		mapper.dog(vo);
		
			
	}
	
	
	
	
	
	
	
	
	
	
	@GetMapping("/admin")
	public List<dog> adminajaxList() {
	
		List<dog> list = mapper.dogList();
		return list;
		
		
	}
	
	@PostMapping("/adminInsert")
	public void adminInsert(dog vo) {

		vo.setMemId("123");
		mapper.adminboardInsert(vo);
		
	}
	
	
	
}
