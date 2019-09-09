package com.codingdojo.studentroster1.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="contactinfo")
public class ContactInfo {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(columnDefinition = "VARCHAR(65)")
    private String address;
    
    @Column(columnDefinition = "VARCHAR(45)")
    private String city;
    
    @Column(columnDefinition = "VARCHAR(2)")
	@NotBlank(message = "Please enter a valid state abbreviation")
    @Size(min = 2, max = 2, message = "State abbreviation must be 2 characters in length")
    private String state;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="student_id")
    private Student student;

    public ContactInfo () {}
    
    public ContactInfo(String address, String city, String state, Student student) {
		this.address = address;
		this.city = city;
		this.state = state;
	}

	public Long getId() {return id;}
	public void setId(Long id) {this.id = id;}

	public String getAddress() {return address;}
	public void setAddress(String address) {this.address = address;}

	public String getCity() {return city;}
	public void setCity(String city) {this.city = city;}

	public String getState() {return state;}
	public void setState(String state) {this.state = state;}

	public Date getCreatedAt() {return createdAt;}
	public void setCreatedAt(Date createdAt) {this.createdAt = createdAt;}

	public Date getUpdatedAt() {return updatedAt;}
	public void setUpdatedAt(Date updatedAt) {this.updatedAt = updatedAt;}

	public Student getStudent() {return student;}
	public void setStudent(Student student) {this.student = student;}

	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	
}
