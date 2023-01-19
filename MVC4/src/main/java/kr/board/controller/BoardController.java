package kr.board.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

// POJO라는걸 알려주는 주석(어노테이션)
// 전처리를 하기 위한 기호 : 주석
// 스프링 프레임워크가 이미 짜여서 있기때문에 그 틀에 맞게 일 시키기 위해서
// 초창기 개발 @Component
@Controller
public class BoardController {


	@Autowired
	private BoardMapper mapper;
	
	// url 가져오는 방식에 따라 get방식으로 넘어오면
	// 맵핑을 get으로

	@GetMapping("/basic.do")
	public String basic() {
		
		// 알아서 ViewResolver에 의해
		// WEB-INF/views에 있는 basic.jsp로 이동
		
		return "basic";
		
	}
	
	
	@RequestMapping("/login.do")
	public String login() {
		
		// 알아서 ViewResolver에 의해
		// WEB-INF/views에 있는 basic.jsp로 이동
		
		return "login";
		
	}
	
	@RequestMapping("/register.do")
	public String register() {
		
		// 알아서 ViewResolver에 의해
		// WEB-INF/views에 있는 basic.jsp로 이동
		
		return "register";
		
	}
	
	@RequestMapping("/Home.do")
	public String Home() {
		
	
		
		return "Home";
		
	}
	
	@RequestMapping("/imgView.do")
	public String imgView() {
		
	
		
		return "imgView";
		
	}
	
	
//	@GetMapping("/boardajaxList.do")
//	public @ResponseBody List<Board> boardajaxList() {
//		
//		// 1. DB에서 게시글 전체 리스트를 가져옴
//		List<Board> list = mapper.boardList();
//		
//		// 비동기통신이 아니었을땐 list를  model에 add해서 이용할 수 있었음
//		// (객체 바인딩)
//		// 새로운 jsp로 이동하는게 아니라 만들어진 데이터를 주고 받을 수 있게끔
//		
//		// 2. 자바객체를 json형식으로 변환
//		// json [{key:value, key:value...},{},{}...]
//		// api 1) Gson 라이브러리 이용 toJson()
//		// api 2) jackson-databind 
//		
//		// 3. list를 보내주기 위해 (json데이터를 ajax로 응답해주기 위해)
//		// return 타입 지정하는 자리에 @ResponseBody 붙입
//		
//		// WEB-INF/views/list.jsp로 인식하지 않게됨
//		return list;
//		
//		
//	}
	
	
	
	
	
	
}
