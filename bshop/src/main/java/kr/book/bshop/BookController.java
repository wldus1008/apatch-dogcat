package kr.book.bshop;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.book.entity.BookVO;
import kr.book.mapper.BookMapper;

@Controller
public class BookController {
	
	@Autowired
	private BookMapper mapper;
	
	
	@RequestMapping("/bookAjax.do")
	public @ResponseBody List<BookVO> bookAjax(){	
		List<BookVO> list = mapper.bookAjax();
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("/bookList.do")
	 public String bookList(){ 
		
		return "bookList"; 
	 }
	
	
	@RequestMapping("/bmi.do")
	public String bmi(Model model, @RequestParam("weight") String weight, @RequestParam("height") String height) {
		try (Socket client = new Socket()) {
			InetSocketAddress ipep = new InetSocketAddress("127.0.0.1", 9999);
			client.connect(ipep);
			try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
		    String msg1 = height;
		    String msg2 = weight;
		    	  
		    String msg = msg1 + "," + msg2;
			byte[] data = msg.getBytes();
			ByteBuffer b = ByteBuffer.allocate(4);
			b.order(ByteOrder.LITTLE_ENDIAN);
			b.putInt(data.length);
			sender.write(b.array(), 0, 4);
			sender.write(data);

			data = new byte[4];
			receiver.read(data, 0, 4);
			b = ByteBuffer.wrap(data);
			b.order(ByteOrder.LITTLE_ENDIAN);
			int length = b.getInt();
			data = new byte[length];
			receiver.read(data, 0, length);
				
			msg = new String(data, "UTF-8");
			System.out.println(msg);
			model.addAttribute("bmi", msg);
		        
				}
		    } catch (Throwable e) {
		      e.printStackTrace();
		    }
		
		
		return "bmi";
	}

	
	
	
	
}
