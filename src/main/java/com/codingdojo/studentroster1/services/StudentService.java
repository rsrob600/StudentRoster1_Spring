package com.codingdojo.studentroster1.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.studentroster1.models.Student;
import com.codingdojo.studentroster1.repositories.StudentRepository;

@Service
public class StudentService {
	private final StudentRepository studentRepository;
	
	public StudentService(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}
	
	// get ALL students
	public List<Student> allStudents(){
		return studentRepository.findAll();
	}
	
	// get ONLY students without related ContactInfo records
	public List<Student> allStudentsNullContactInfo(){
		return studentRepository.findByContactInfoIsNull();
	}
	
	// get one student by id
	public Student findStudent(Long id) {
		Optional<Student> optionalStudent = studentRepository.findById(id);
		if(optionalStudent.isPresent()) {
			return optionalStudent.get();
		} else {
			return null;
		}
	}
	
	// add a student
	public Student addStudent(Student s) {
		return studentRepository.save(s);
	}
	
	// delete a student
	public void deleteStudent(Long id) {
		studentRepository.deleteById(id);
	}
	
}
