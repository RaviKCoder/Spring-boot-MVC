package com.ravi.vo;

import java.io.Serializable;
import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.Version;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class DoctorVO implements Serializable {
	//data properties
	
	private Integer id;
	
	@NonNull
	@Column(length = 30)
	private String name;
	
	@NonNull
	@Column(length = 30)
	private String addrs;
	
	@NonNull
	@Column(length = 30)
	private String specialization;
	
	@NonNull
	private Double fee;
	
	private Double netFee;
	
	
}

