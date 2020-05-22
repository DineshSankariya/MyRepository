package com.Dinesh.DataBaseEntity;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "user")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "first_name")
	@NotEmpty(message = "must required")
	@Size(min = 4,message = "must contain min 5 char")
	private String fname;
	
	@Column(name="last_name")
	@NotEmpty(message = "must required")
	private String lname;
	
	@Column(name="mobile_num")
	@Size(min = 10,max = 10,message = "must contain 10 nos")
	@NotEmpty(message = "must required")
	private String mob_num;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	@NotEmpty(message = "must required")
	@Size(min = 5,message = "must contain min 5 character")
	private String password;
	
	@OneToMany(fetch = FetchType.EAGER,mappedBy = "userid")
	@Cascade({CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH,CascadeType.REMOVE})
	@JsonManagedReference
	private List<Result> result;
	
	@OneToMany(fetch = FetchType.LAZY,mappedBy = "user")
	@Cascade({CascadeType.ALL})
	private List<UserSurvey> usersurvey;

	public User() {
	}

	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public User(String fname, String lname,String mob_num, String email,String pass) {
		this.fname = fname;
		this.lname = lname;
		this.mob_num = mob_num;
		this.email = email;
		this.password=pass;
	}
	
	public void addresult(Result res) {
		
		if(this.result==null) {
			this.result=new ArrayList<Result>();
		}
		
		this.result.add(res);
		
		res.setUserid(this);
	}
	
	public void addusersurvey(UserSurvey newsurvey) {
		
		if(this.usersurvey==null) {
			this.usersurvey=new ArrayList<UserSurvey>();			
		}
		
		this.usersurvey.add(newsurvey);
		newsurvey.setUser(this);
				
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMob_num() {
		return mob_num;
	}

	public void setMob_num(String mob_num) {
		this.mob_num = mob_num;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	public List<Result> getResult() {
		return result;
	}

	public void setResult(List<Result> result) {
		this.result = result;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", fname=" + fname + ", lname=" + lname + ", mob_num=" + mob_num + ", email=" + email
				+ ", password=" + password + "]";
	}

	
	
	
	
	
}
