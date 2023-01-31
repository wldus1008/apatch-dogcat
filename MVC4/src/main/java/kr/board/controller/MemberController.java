package kr.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.board.entity.Member;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.MemberMapper;
import kr.board.mapper.imgMapper;

@Controller
public class MemberController {
	
	@Autowired
	private MemberMapper mmapper;
	
	
	//회원가입
		@PostMapping("/join.do")
		public String register(Member vo){
			
			// 회원가입 서비스 실행
			mmapper.memberJoin(vo);
			
			return "Home";
			
		}
	
	
	
	
	
	
	
	@Autowired
	private BoardMapper mapper;
	private imgMapper imapper;
	// private MemberMapper mmapper;
	
		
	// memId, memPw를 담는 Member객체로 묶어 줄 수 있음
	@PostMapping("/Login.do")
	public String Login(Member mvo, HttpServletRequest request) {
		// 로그인 기능 - 해당 아이디, 비밀번호 일치하는 회원의 정보 세션에 저장
		 Member loginMember = mapper.memberLogin(mvo);
		
		 // 만약에 로그인 정보가 있으면 -> 세션에 정보를 저장
		 if(loginMember != null) {
			 // 1. 세션 객체 생성
			 HttpSession session = request.getSession();
			 // 2. 세션에 값을 setAttrubute()
			 session.setAttribute("loginMember", loginMember);
		 }
		 
		// basic.jsp로 이동
		 // 다른 컨트롤러에 있는 메소드 실행
		return "redirect:/Home.do";
	}
	
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		
		return "redirect:/Home.do";
	}
	

	
	
	
}
