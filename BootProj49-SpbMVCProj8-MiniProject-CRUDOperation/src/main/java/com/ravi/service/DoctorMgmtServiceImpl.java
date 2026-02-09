package com.ravi.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ravi.entity.DoctorEntity;
import com.ravi.repository.IDoctorRepository;
import com.ravi.vo.DoctorVO;
@Service
public class DoctorMgmtServiceImpl implements IDoctorManagementService {

	@Autowired
	IDoctorRepository doctorRepo;
	
	@Override
	public String saveDoctor(DoctorVO vo) {
		//convert VO to Entity
		DoctorEntity entity=new DoctorEntity();
		BeanUtils.copyProperties(vo, entity);
		
		entity.setCreatedBy(System.getProperty("user.name"));
		entity.setUpdatedBy(System.getProperty("user.name"));
		//save the object
		Integer id = doctorRepo.save(entity).getId();		
		return "Doctor is saved with id value:"+id;
	}

	@Override
	public List<DoctorVO> showAllDoctor() {
		//use repo
		List<DoctorEntity> listEntity = doctorRepo.findAll();
		
		//convert listEntity to listVO
		List<DoctorVO> listVO=new ArrayList<DoctorVO>();
		listEntity.forEach(entity->{
			DoctorVO vo=new DoctorVO();
			BeanUtils.copyProperties(entity, vo);
			vo.setNetFee(vo.getFee()+vo.getFee()*0.1);
			listVO.add(vo);
		});
		
		return listVO;
	}

	@Override
	public DoctorVO showDoctorById(Integer id) {
		//load the objet
		DoctorEntity entity = doctorRepo.findById(id).orElseThrow(()->new IllegalArgumentException("invalid id"));
		//connvert entity to vo object
		DoctorVO vo=new DoctorVO();
		
		BeanUtils.copyProperties(entity, vo); 
		return vo;
	}

	@Override
	public String editDoctor(DoctorVO vo) {
		//check the record availability
		DoctorEntity entity = doctorRepo.findById(vo.getId()).orElseThrow(()->new IllegalArgumentException("Invalid id"));
		//convert vo object to entity object
		BeanUtils.copyProperties(vo, entity);
		entity.setUpdatedBy(System.getProperty("user.name"));
		//update object
		doctorRepo.save(entity);
		
		return "Doctor details are updated successfully with id value:"+vo.getId();
	}

	@Override
	public String deleteDoctorById(Integer id) {
		//check the availability
		boolean flag = doctorRepo.existsById(id);
		
		if(flag) {
			doctorRepo.deleteById(id);
			return "Doctor details deleted successfully with id "+id;
		}
		
		return "Doctor not found with id "+id;
	}

}
