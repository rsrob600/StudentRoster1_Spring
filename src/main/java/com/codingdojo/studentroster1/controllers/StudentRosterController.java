package com.codingdojo.studentroster1.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.codingdojo.studentroster1.models.ContactInfo;
import com.codingdojo.studentroster1.models.Student;
import com.codingdojo.studentroster1.services.ContactInfoService;
import com.codingdojo.studentroster1.services.StudentService;

@Controller
public class StudentRosterController {
	private final StudentService studentService;
	private final ContactInfoService contactInfoService;
	
	public StudentRosterController(StudentService studentService, ContactInfoService contactInfoService) {
		this.studentService = studentService;
		this.contactInfoService = contactInfoService;
	}
	
	// Home - COMPLETE All Students View Route
	@RequestMapping("/students")
	public String studentsViewAll(Model model) {
		model.addAttribute("student", studentService.allStudents());		
		return "views/allStudents.jsp";
	}
	
	// Display New Student page route
	@RequestMapping("/student/new")
	public String newStudent(@ModelAttribute("student") Student student) {
		return "views/newStudent.jsp";
	}
	
	// Save New Student data route
	@PostMapping("/addStudent")
	public String addStudent(@Valid @ModelAttribute("student") Student student, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("errors", result.getAllErrors());
			return "views/newStudent.jsp";
		} else {
			studentService.addStudent(student);
			return "redirect:/student/new";
		}
	}
	
	// Display New Contact Info page route
	@RequestMapping("/contactinfo/new")
	public String newContactInfo(Model model, @ModelAttribute("contactInfo") ContactInfo contactInfo) {
		List<Student> students = studentService.allStudentsNullContactInfo();
		model.addAttribute("students", students);
		return "views/contactInfo.jsp";
	}
	
	// Save New Contact Info data route
	@PostMapping("/addcontactinfo")
	public String addContactInfo(@Valid @ModelAttribute("contactInfo") ContactInfo contactInfo, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("errors", result.getAllErrors());
			return "views/contactInfo.jsp";
		} else {
			contactInfoService.addContactInfo(contactInfo);
			return "redirect:/contactinfo/new";
		}
	}
	
}
