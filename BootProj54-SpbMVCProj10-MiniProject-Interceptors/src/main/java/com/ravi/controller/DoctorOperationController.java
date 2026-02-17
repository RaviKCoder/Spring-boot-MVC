package com.ravi.controller;


import java.util.List;
import java.util.Map;


import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ravi.service.IDoctorManagementService;
import com.ravi.vo.DoctorVO;

import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorOperationController {
	
	@Autowired
	private IDoctorManagementService docService;
	
	@GetMapping
	public String showHome() {
		//return LVN
		return "welcome";
	}
	
	@GetMapping("/report")
	public String showReport(Map<String, Object> map) {
		//user service
		List<DoctorVO> listVO = docService.showAllDoctor();
		//keep the result in model attributes
		map.put("listVO", listVO);
		//return LVN
		return "show_report";
	}
	
	@GetMapping("/add")
	public String showAddDoctorFormPage(@ModelAttribute("docVO") DoctorVO vo) {
		//return LVN
		return"doctor_register_form";
	}
	
//	@PostMapping("/add")
//	public String saveDoctor(@ModelAttribute("docVO") DoctorVO vo,Map<String, Object> map) {
//		//use service
//		String result = docService.saveDoctor(vo);
//		//keep result as model attribute
//		map.put("resultMsg", result);
//		//return LVN
//		return "redirect:report";	
//	}

	
//	@PostMapping("/add")
//	public String saveDoctor(@ModelAttribute("docVO") DoctorVO vo,RedirectAttributes attrs) {
//		//use service
//		String result = docService.saveDoctor(vo);
//		//keep result as redirect model attribute
//		attrs.addFlashAttribute("resultMsg", result);
//		//return LVN
//		return "redirect:report";	
//	}
	
	@PostMapping("/add")
	public String saveDoctor(@ModelAttribute("docVO") DoctorVO vo,HttpSession ses) {
		//use service
		String result = docService.saveDoctor(vo);
		//keep result as redirect model attribute
		ses.setAttribute("resultMsg", result);
		//return LVN
		return "redirect:report";	
	}
	
	@GetMapping("/edit")
	public String showEditDoctorFormPage(@ModelAttribute("docVO") DoctorVO vo,@RequestParam Integer no) {
		//use the service
		DoctorVO vo1 = docService.showDoctorById(no);
		//copy vo1 object data to  vo object
		BeanUtils.copyProperties(vo1, vo);
		//return LVN
		return"doctor_edit_form";
	}
	
	@PostMapping("/edit")
	public String editDoctor(@ModelAttribute("docVO") DoctorVO vo, RedirectAttributes attrs) {
		//use the service
		String msg = docService.editDoctor(vo);
		//add the flash attribute
		attrs.addFlashAttribute("resultMsg",msg);
		
		return"redirect:report";
	}
	
//	@GetMapping("/delete")
//	public String deleteDoctor(@RequestParam("no") Integer no,RedirectAttributes attrs) {
//		//use service
//		String msg = docService.deleteDoctorById(no);
//		//keep the message in model attributes
//		attrs.addFlashAttribute("resultMsg",msg);
//		//redirect the request
//		return "redirect:report";
//	}
	
	@GetMapping("/delete")
	public String deleteDoctor(@RequestParam("no") Integer no,Map<String, Object> map) {
		//use service
		String msg = docService.deleteDoctorById(no);
		//keep the message in model attributes
		map.put("resultMsg",msg);
		//redirect the request
		return "forward:report";
	}
	
	@GetMapping("/page_report")
	public String showReportByPagination(@PageableDefault(page=0,size = 4,sort = "specialization",direction = Sort.Direction.ASC) Pageable pageable,Map<String, Object> map) {
		//use service
         Page<DoctorVO> page = docService.showDoctorByPagination(pageable); 
		//keep the object to shared memory as the model attribute
		map.put("pageData", page);
		//return LVN
		return "page_report";
		
	}

}
