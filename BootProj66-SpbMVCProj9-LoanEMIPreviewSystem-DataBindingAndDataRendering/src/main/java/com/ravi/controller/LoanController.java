package com.ravi.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ravi.model.Loan;

@Controller
public class LoanController {
	
	@GetMapping
	public String showHome() {
		System.out.println("LoanController.showHome()");
		return "home";
	}
	
	@GetMapping("/view")
	public String loanForm() {
		System.out.println("LoanController.loanForm()");
		return "loan-form";
	}
	
	@PostMapping("/loan")
	public String showLoanEMI(Map<String, Object> map,@ModelAttribute("ln") Loan loan) {

	    Integer loanAmount = loan.getLoanAmount();
	    double annualRate = loan.getInterestRate();
	    Integer tenureMonths = loan.getTenureMonths();

	    double emi=0;
	    
	    if(loanAmount>=0 && annualRate>-1 && tenureMonths>=0) {
	    	
	    	if (annualRate == 0) {
		        // Zero interest case
		        emi = loanAmount / tenureMonths;
		    } else {
		        double monthlyRate = annualRate / (12 * 100);
		        emi = (loanAmount * monthlyRate * Math.pow(1 + monthlyRate, tenureMonths)) /
		              (Math.pow(1 + monthlyRate, tenureMonths) - 1);
		    }
	    	
	    }else {
	    	System.out.println("Invalid data");
	    	
	    }
	    

	    

	    map.put("EMI", (int)emi);
	    map.put("loanAmount", loanAmount);
	    map.put("tenure", tenureMonths);

	    return "loan-result";
	}


}
