package kr.board.controller;


import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import kr.board.entity.Files;
import kr.board.entity.Petinfo;
import kr.board.mapper.PetMapper;
import kr.board.mapper.imgMapper;
@RestController
public class imgController {

	
	@Autowired
	private imgMapper mapper;

	
	@RequestMapping("upload/{pet_seq}")
	public void fileinsert(HttpServletRequest request, @RequestPart MultipartFile files ,@PathVariable int pet_seq) throws Exception{
		System.out.println("[Img Controller 들어옴!!]");
		System.out.println("pet_seq : "+ pet_seq);
		
		Files file = new Files();
		String sourceFileName = files.getOriginalFilename();
		
		        String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
		        
		        File destinationFile; 
		        String destinationFileName;
		        String fileUrl = "C:\\Users\\user\\git\\repository2\\MVC4\\src\\main\\webapp\\resources\\fimages\\";
		        
		        
		        do { 
		            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension; 
		            destinationFile = new File(fileUrl + destinationFileName); 
		        } while (destinationFile.exists()); 
		        
		        destinationFile.getParentFile().mkdirs();
		        files.transferTo(destinationFile);
		        file.setPet_seq(pet_seq);
		        file.setFile_name(destinationFileName);
		        file.setFile_real_name(sourceFileName);
		        
				/*
				 * if(update != null) { mapper.update(file); }else { } mapper.imgupload(file);
				 */	
		        
		        String pet_search =  mapper.select_pet(pet_seq);
		        if(pet_search == null) {
		        	mapper.imgupload(file);
		        }else {
		        	mapper.update(file);
		        }
		        
		    }
	
	
	
	}
	

