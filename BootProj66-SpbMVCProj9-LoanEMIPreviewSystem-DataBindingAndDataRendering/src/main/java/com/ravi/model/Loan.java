package com.ravi.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Loan {

	private Integer loanAmount;

	private double interestRate;

	private Integer tenureMonths;

}
