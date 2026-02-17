package com.ravi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {
	
	@GetMapping("/")
	public String homePage() {
		return "home";
	}
	
	
	
	@GetMapping("/login")
	public String loginPage() {
		return "login";
	}
	
	@PostMapping("/doLogin")
	public String doLogin(@RequestParam String username,@RequestParam String password,HttpSession session) {

		if(username.equals("Ravi kumar") && password.equals("123")) {
		    session.setAttribute("username", "Ravi kumar");
		    return "redirect:/dashboard";
		}

	    return "redirect:/invalid";
	}
	

	@GetMapping("/dashboard")
	public String dashboardPage() {
	    return "dashboard";
	}
	
	
	@GetMapping("/invalid")
	public String invalidPage() {
	    return "invalid";
	}

	@GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }


}
