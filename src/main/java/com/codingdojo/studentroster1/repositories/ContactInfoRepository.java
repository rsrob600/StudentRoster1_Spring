package com.codingdojo.studentroster1.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.studentroster1.models.ContactInfo;

@Repository
public interface ContactInfoRepository extends CrudRepository<ContactInfo, Long> {

	// this method retrieves all the contact info from the database copy
	List<ContactInfo> findAll();
}
