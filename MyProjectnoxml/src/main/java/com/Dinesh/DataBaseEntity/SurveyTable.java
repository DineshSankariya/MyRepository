package com.Dinesh.DataBaseEntity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "Surveylist")
public class SurveyTable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="sid")
	private int id;
	
	@Column(name="name")
	@NotNull(message = "is required")
	private String name;
	
	@OneToMany(fetch = FetchType.EAGER,mappedBy = "survey")
	@Cascade({CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH,CascadeType.REMOVE})
	@LazyCollection(LazyCollectionOption.FALSE)
	@JsonManagedReference
	private Set<Question> questions;
	
	@OneToMany(fetch = FetchType.EAGER,mappedBy = "surveyid")
	@Cascade({CascadeType.PERSIST,CascadeType.MERGE,CascadeType.DETACH,CascadeType.REFRESH,CascadeType.REMOVE})
	@LazyCollection(LazyCollectionOption.FALSE)
	@JsonManagedReference
	private Set<Result> result;

	public SurveyTable() {
	}

	public SurveyTable(String name) {
		this.name = name;
	}
	
	public void addquestion(Question addquestion) {
			
		if(this.questions==null) {
			this.questions= new HashSet<Question>();
		}
		
		this.questions.add(addquestion);
		
		addquestion.setSurvey(this);
		
	}
	
	public boolean removequestion(Question deletequestion) {
		for (Question question : questions) {
			if(question.equals(deletequestion)) {
				 
				return this.questions.remove(deletequestion);
				
			}

		}
		
		return false;
		
	}
	
	public void addres(Result addquestion) {
		
		if(this.result==null) {
			this.result=  new HashSet<Result>();
		}
		
		this.result.add(addquestion);
		
		addquestion.setSurveyid(this);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "SurveyTable [id=" + id + ", name=" + name + "]";
	}

	public Set<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(Set<Question> questions) {
		this.questions =  questions;
	}

	public Set<Result> getResult() {
		return result;
	}

	public void setResult(Set<Result> result) {
		this.result =  result;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((questions == null) ? 0 : questions.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SurveyTable other = (SurveyTable) obj;
		if (questions == null) {
			if (other.questions != null)
				return false;
		} else if (!questions.equals(other.questions))
			return false;
		return true;
	}

	


	
	
	
}
