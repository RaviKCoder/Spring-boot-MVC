package com.ravi.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ravi.entity.DoctorEntity;

public interface IDoctorRepository extends JpaRepository<DoctorEntity,Integer> {

}
