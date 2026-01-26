package com.ravi.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.support.BindingAwareModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletResponse;

@Controller
public class ShowHomeController {
	
//	@RequestMapping("/home")
//	public String showHomePage() {
//		System.out.println("ShowHomeController.showHomePage()");
//		return "welcome";
//	}
	
//	@RequestMapping("/home")
//	public String showHomePage(Map<String, Object> map) {
//		System.out.println("ShowHomeController.showHomePage()");
//		map.put("sysDate", new Date());
//		map.put("age", new Random().nextInt(100));
//		return "show_data";
//	}
	
//	@RequestMapping("/home")
//	public String showHomePage(Model model) {
//		System.out.println("ShowHomeController.showHomePage()");
//		model.addAttribute("sysDate", new Date());
//		model.addAttribute("age", new Random().nextInt(100));
//		return "show_data";
//	}
	
//	@RequestMapping("/home")
//	public Model showHomePage() {
//		System.out.println("ShowHomeController.showHomePage()");
//		Model model=new BindingAwareModelMap();//manually created shared memory
//		//add model attribute to shared memory
//		model.addAttribute("sysDate", new Date());
//		model.addAttribute("age", new Random().nextInt(100));
//		return model;
//	}
	

//	@RequestMapping("/home")
//	public String showHomePage(Map<String, Object> map) {
//		System.out.println("ShowHomeController.showHomePage()");
//		map.put("sysDate", new Date());
//		map.put("age", new Random().nextInt(100));
//		//handler method chaining
//		//return "forward:report";
//		return "redirect:report";
//	}
//	
//	@RequestMapping("/report")
//	public String showReport(Map<String, Object> map) {
//		System.out.println("ShowHomeController.showReport()");
//		//add more model attribute
//		map.put("favColor", "Red");
//		//return LVN
//		return "show_report1";
	
	
//	@Autowired
//	private ServletConfig scg;
//	
//	@Autowired
//	private ServletContext sct;
//	
//	@RequestMapping("/home")
//	public String showHomePage(Map<String, Object> map,
//								HttpServletRequest request,
//								HttpServletResponse response,
//								HttpSession ses) {
//		System.out.println("Ds Logical name: "+scg.getServletName());
//		System.out.println("Context path of web application: "+sct.getContextPath());
//		System.out.println("ShowHomeController.showHomePage()");
//		System.out.println("Request URI: "+request.getRequestURI());
//		System.out.println("Status code: "+response.getStatus());
//		System.out.println("Session id: "+ses.getId());
//		
//		map.put("sysDate", new Date());
//		map.put("age", new Random().nextInt(100));
//		return "welcome";
//	}
	
	@RequestMapping("/report")
	public void showReport(HttpServletResponse response) throws IOException {
		System.out.println("ShowHomeController.showReport()");
		//give instruction to browser to make the response as downloadable content
		response.setHeader("content-disposition", "attachment;filename=abc.html");
		//set response content type
		response.setContentType("text/html");
		
		//get printwriter
		PrintWriter pw = response.getWriter();
		pw.println("<b>System Date and Time: </b>"+new Date());
		pw.close();
	
	}
	
	
}
