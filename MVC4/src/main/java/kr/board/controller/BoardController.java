package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import kr.board.entity.Board;
import kr.board.entity.Comment;
import kr.board.entity.Files;
import kr.board.entity.Member;
import kr.board.entity.Pet_profile;
import kr.board.entity.Adminboard;
import kr.board.mapper.BoardMapper;
import kr.board.mapper.PetMapper;
import kr.board.mapper.imgMapper;

// POJO라는걸 알려주는 주석(어노테이션)
// 전처리를 하기 위한 기호 : 주석
// 스프링 프레임워크가 이미 짜여서 있기때문에 그 틀에 맞게 일 시키기 위해서
// 초창기 개발 @Component
@Controller
public class BoardController {


	@Autowired
	private BoardMapper mapper;
	@Autowired
	private imgMapper imgMapper;
	@Autowired
	private PetMapper petmapper;
	
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
		
	
		
		return "register";
		
	}
	
	@RequestMapping("/Home.do")
	public String Home(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") != null) {
			Member loginMember = (Member) session.getAttribute("loginMember");
			System.out.println("id : " + loginMember.getMem_id());

			/*
			 * List<Files> img = imgMapper.getImgList(loginMember.getMem_id()); if(img !=
			 * null) { model.addAttribute("img", img); }
			 */
			
			/*
			 * List<Petinfo> updatePetinfo = petmapper.checkId(loginMember.getMem_id());
			 * session.setAttribute("loginPet", updatePetinfo)
			 */;
			
			  List<Pet_profile> pet_profile = petmapper.pet_profile(loginMember.getMem_id());
			  model.addAttribute("pet_profile", pet_profile);
			 
		}
		
		return "Home";
		
	}
	
	@RequestMapping("/imgView.do")
	public String imgView() {
		
	
		
		return "imgView";
		
	}
	

	@RequestMapping("/goService.do")
	public String goService() {
		
	
		
		return "service";
		
	}
	
	@RequestMapping("/service.do")
	public String service(Model model, @RequestParam("weight") int weight, @RequestParam("height") int height) {
		    // 소켓을 선언한다.
		    try (Socket client = new Socket()) {
		      // 소켓에 접속하기 위한 접속 정보를 선언한다.
		      InetSocketAddress ipep = new InetSocketAddress("127.0.0.1", 9999);
		      // 소켓 접속!
		      client.connect(ipep);
		      // 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다.
		      
		      try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
		        // 메시지는 for 문을 통해 10번 메시지를 전송한다.
		        
		        // 전송할 메시지를 작성한다.
		        String msg = weight + "," + height;
		        // string을 byte배열 형식으로 변환한다.
		        byte[] data = msg.getBytes();
		        // ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
		        ByteBuffer b = ByteBuffer.allocate(4);
		        // byte포멧은 little 엔디언이다.
		        b.order(ByteOrder.LITTLE_ENDIAN);
		        b.putInt(data.length);
		        // 데이터 길이 전송
		        sender.write(b.array(), 0, 4);
		        // 데이터 전송
		        sender.write(data);
		          
		        data = new byte[4];
		        // 데이터 길이를 받는다.
		        receiver.read(data, 0, 4);
		        // ByteBuffer를 통해 little 엔디언 형식으로 데이터 길이를 구한다.
		        b = ByteBuffer.wrap(data);
		        b.order(ByteOrder.LITTLE_ENDIAN);
		        int length = b.getInt();
		        // 데이터를 받을 버퍼를 선언한다.
		        data = new byte[length];
		        // 데이터를 받는다.
		        receiver.read(data, 0, length);
		          
		        // byte형식의 데이터를 string형식으로 변환한다.
		        msg = new String(data, "UTF-8");
		        // 콘솔에 출력한다.
		        System.out.println(msg);
		        model.addAttribute("bmi", msg);
		        
		      }
		    } catch (Throwable e) {
		      e.printStackTrace();
		    }
		
		return "serviceResult";
	}
	
	@RequestMapping("/map.do")
	public String map() {
		
	
		
		return "map";
		
	}
	
	@RequestMapping("/mypage.do")
	public String mypage(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(session.getAttribute("loginMember") != null) {
			Member loginMember = (Member) session.getAttribute("loginMember");
			System.out.println("id : " + loginMember.getMem_id());

			List<Pet_profile> pet_profile = petmapper.pet_profile(loginMember.getMem_id());
			model.addAttribute("pet_profile", pet_profile);
			if(pet_profile != null) {
				model.addAttribute("pet_profile", pet_profile);
				}
		}
		return "mypage";
	}
	
	@RequestMapping("/adminboard.do")
	public String adminboard() {
		
	
		
		return "adminboard";
		
	}

	
	@RequestMapping("/adminboardview/{idx}")
	public String adminboardview(Model model ,@PathVariable int idx) {
		Adminboard vo =  mapper.adminboardContent(idx);
		if(vo != null) {
			model.addAttribute("vo", vo);
		}
		return "adminboardview";
	}
	@RequestMapping("/adminUpdate.do/{idx}")
	public String adminUpdate(Model model ,@PathVariable int idx) {
		Adminboard vo =  mapper.adminboardContent(idx);
		if(vo != null) {
			model.addAttribute("vo", vo);
		}
		return "adminUpdate";
	}
	
	@RequestMapping("/boardContent/{b_seq}")
	public String boardView(Model model ,@PathVariable int b_seq) {
		Board vo =  mapper.boardView(b_seq);
		model.addAttribute("vo", vo);
		
		return "boardView";
	}
	
	@RequestMapping("/boardDelete/{b_seq}")
	public String boardDelete(@PathVariable int b_seq) {
		mapper.boardDelete(b_seq);

		return "basic";
	}
	
	
	
	@PostMapping("/boardUpdate")
	public String boardUpdate(@RequestParam("b_title") String b_title, @RequestParam("b_content") String b_content, @RequestParam("b_seq") int b_seq, Board vo) {
		vo.setB_title(b_title);;
		vo.setB_content(b_content);;
		vo.setB_seq(b_seq);;
		mapper.boardUpdate(vo);

		return "redirect:/boardContent/"+vo.getB_seq();
	}
	
	// 이거 나중에 할거 
	@RequestMapping("/commentInsert")
	public String commentInsert(Comment vo) {
		
		// vo.setB_comment(comment);
		mapper.commentInsert(vo);

		return "redirect:/boardContent/"+vo.getB_seq();
	}
	
	
	
	@RequestMapping("/kcal.do")
	public String kcal() {
		
	
		
		return "kcal";
		
	}
	
	@RequestMapping("/profile_update/{pet_seq}")
	public String profileUpdate(@PathVariable int pet_seq, Model model) {
		
		Pet_profile profile = petmapper.selectPet(pet_seq);
		model.addAttribute("profile", profile);
		
		return"petprofile"; 
	}

	
	
	
}
	

	
	

