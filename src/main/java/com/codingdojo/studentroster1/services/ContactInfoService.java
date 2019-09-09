package com.codingdojo.studentroster1.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.studentroster1.models.ContactInfo;
import com.codingdojo.studentroster1.repositories.ContactInfoRepository;

@Service
public class ContactInfoService {
	private final ContactInfoRepository contactInfoRepository;
	
	public ContactInfoService(ContactInfoRepository contactInfoRepository) {
		this.contactInfoRepository = contactInfoRepository;
	}
	
	// get all contact info
	public List<ContactInfo> allContactInfo(){
		return contactInfoRepository.findAll();
	}
	
	// get one contact info by id
	public ContactInfo findContactInfo(Long id) {
		Optional<ContactInfo> optionalContactInfo = contactInfoRepository.findById(id);
		if(optionalContactInfo.isPresent()) {
			return optionalContactInfo.get();
		} else {
			return null;
		}
	}
	
	// add one contact info
	public ContactInfo addContactInfo(ContactInfo c) {
		return contactInfoRepository.save(c);
	}
	
	// delete a contact info
	public void deleteContactInfo(Long id) {
		contactInfoRepository.deleteById(id);
	}
	
	
}
