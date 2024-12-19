package com.org.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class User {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false)
	private String name;
	
	@Column(nullable = false)
	private int age;
	
	@Column(nullable= false , unique = true)
	private long mobile;
	
	@Column(nullable=false , unique = true)
	private String email;
	
	@Column(nullable = false)
	private String password;
	
	@OneToMany(mappedBy = "user", cascade=CascadeType.ALL)
	private List<Notes> note;

	public User(String name, int age, long mobile, String email, String password) {
		super();
		this.name = name;
		this.age = age;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
	}

	public User(int id, String name, int age, long mobile, String email, String password) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
	}
	

	
}
