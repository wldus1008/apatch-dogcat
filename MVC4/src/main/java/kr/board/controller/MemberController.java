package kr.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.Member;
import kr.board.entity.Petinfo;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.PetMapper;

@Controller
public class MemberController {
	
	
	
	@Autowired
	private PetMapper petmapper;
	
	@Autowired
	private BoardMapper mapper;
	
	
	@GetMapping("/login")
	public String loginForm(HttpServletRequest request, Model model) {
	    
	    /**
	     * 이전 페이지로 되돌아가기 위한 Referer 헤더값을 세션의 prevPage attribute로 저장 
	     */
	    String uri = request.getHeader("Referer");
	    System.out.println(uri);
	    if (uri != null && !uri.contains("/login")) {
	        request.getSession().setAttribute("prevPage", uri);
	    }
	    return "redirect:/Login.do";
	}
		
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
		 
					
		 Petinfo loginPet = petmapper.checkId(mvo.getMemId());
		 if(loginPet != null) {
			 HttpSession session = request.getSession();
			 session.setAttribute("loginPet", loginPet);
			 
		 } 
		 
		 
		 
		 // 다른 컨트롤러에 있는 메소드 실행
		return "redirect:/";
	}
	
	@RequestMapping("/Logout.do")
	public String Logout(HttpSession session) {
		session.removeAttribute("loginMember");
		
		return "redirect:/";
	}
	

	
	
	
}
