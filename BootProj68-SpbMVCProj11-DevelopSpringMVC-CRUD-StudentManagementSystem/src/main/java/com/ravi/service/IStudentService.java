package com.ravi.service;

import java.util.List;

import com.ravi.entity.StudentEntity;

public interface IStudentService {

	public String saveStudent(StudentEntity entity);
	public List<StudentEntity> showAllStudent();
	public StudentEntity showStudentById(Integer id);
	public String editStudent(StudentEntity entity);
	public String deleteStudentById(Integer id);
}
