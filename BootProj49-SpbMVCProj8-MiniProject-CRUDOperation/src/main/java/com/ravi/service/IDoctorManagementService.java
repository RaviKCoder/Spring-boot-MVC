package com.ravi.service;

import java.util.List;

import com.ravi.vo.DoctorVO;

public interface IDoctorManagementService {
	
	public String saveDoctor(DoctorVO vo);
	public List<DoctorVO> showAllDoctor();
	public DoctorVO showDoctorById(Integer id);
	public String editDoctor(DoctorVO vo);
	public String deleteDoctorById(Integer id);
}
