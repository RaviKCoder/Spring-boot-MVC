package com.ravi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BankAccount {

	private Long accountNumber;

	private String holderName;

	private String accountType;

	private String branch;

	private Double balance;
	
}
