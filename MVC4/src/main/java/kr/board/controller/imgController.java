package kr.board.controller;


import java.io.File;


import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import kr.board.entity.Files;
import kr.board.mapper.imgMapper;
@Controller
public class imgController {

	
	@Autowired
	private imgMapper mapper;
	
	@RequestMapping("upload")
	public String fileinsert(HttpServletRequest request, @RequestPart MultipartFile files , @RequestParam("memId")String memId) throws Exception{
		Files file = new Files();
		String sourceFileName = files.getOriginalFilename(); 
		        String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
		        
		        File destinationFile; 
		        String destinationFileName;
		        String fileUrl = "C:\\eGovFrame-3.10.0\\workspace.edu\\MVC03\\src\\main\\resources\\fimages\\";
		        
		        
		        do { 
		            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension; 
		            destinationFile = new File(fileUrl + destinationFileName); 
		        } while (destinationFile.exists()); 
		        
		        destinationFile.getParentFile().mkdirs(); 
		        files.transferTo(destinationFile);
		        file.setMemId(memId);
		        file.setFilename(destinationFileName);
		        file.setFileOriName(sourceFileName);
		        file.setFileurl(fileUrl+destinationFileName);
		        mapper.imgupload(file);
		       		        
		        return "redirect:/Home.do";
		    }
	}
	

