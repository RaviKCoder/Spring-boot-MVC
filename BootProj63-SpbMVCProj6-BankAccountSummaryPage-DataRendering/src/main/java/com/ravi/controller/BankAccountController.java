package com.ravi.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ravi.BootProj63SpbMvcProj6BankAccountSummaryPageDataRenderingApplication;
import com.ravi.model.BankAccount;

@Controller
public class BankAccountController {

    
	@RequestMapping("/")
	public String showBankAccountDetails(Map<String, Object> map) {
		
		BankAccount bankAccount1=new BankAccount(1234567890L, "Ravi kumar", "Saving", "Jharkhand", 52000.0);
		
		List<BankAccount> listOfBankAccounts = List.of(bankAccount1);
		
		map.put("listOfBankAccount", listOfBankAccounts);
		
		return "account-summary";
	}
	
}
