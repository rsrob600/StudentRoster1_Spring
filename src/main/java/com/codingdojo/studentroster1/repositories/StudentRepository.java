package com.codingdojo.studentroster1.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.studentroster1.models.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Long> {

	// this method retrieves all the students from the database copy
	List<Student> findAll();
	
	// this method retrieves ONLY the students from the database copy that don't have a related ContactInfo record
	List<Student> findByContactInfoIsNull();
	
}
