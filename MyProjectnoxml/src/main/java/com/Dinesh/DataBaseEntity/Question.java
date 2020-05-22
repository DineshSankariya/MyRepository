package com.Dinesh.DataBaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "SurveyQuestion")
public class Question {
	
	@Id
	@Column(name = "Qid")
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private Integer qid;
	
	@ManyToOne
	@JoinColumn(name = "SQid")
	@JsonBackReference
	private SurveyTable survey;
	
	@Column(name = "Question")
	@NotEmpty(message = "is required")
	private String question;
	
	@Column(name = "choice1")
	@NotEmpty(message = "is required")
	private String cho1;
	
	@Column(name = "choice2")
	@NotEmpty(message = "is required")
	private String cho2;
	
	@Column(name = "choice3")
	@NotEmpty(message = "is required")
	private String cho3;
	
	@Column(name = "choice4")
	@NotEmpty(message = "is required")
	private String cho4;

	public Question() {
	}
	

	public Question(String question, String cho1, String cho2, String cho3, String cho4) {
		
		this.question = question;
		this.cho1 = cho1;
		this.cho2 = cho2;
		this.cho3 = cho3;
		this.cho4 = cho4;
		
	}

	public int getQid() {
		return qid;
	}

	public void setQid(int qid) {
		this.qid = qid;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getCho1() {
		return cho1;
	}

	public void setCho1(String cho1) {
		this.cho1 = cho1;
	}

	public String getCho2() {
		return cho2;
	}

	public void setCho2(String cho2) {
		this.cho2 = cho2;
	}

	public String getCho3() {
		return cho3;
	}

	public void setCho3(String cho3) {
		this.cho3 = cho3;
	}

	public String getCho4() {
		return cho4;
	}

	public void setCho4(String cho4) {
		this.cho4 = cho4;
	}


	public SurveyTable getSurvey() {
		return survey;
	}


	public void setSurvey(SurveyTable survey) {
		this.survey = survey;
	}


	@Override
	public String toString() {
		return "Question [qid=" + qid + ", survey=" + survey + ", question=" + question + ", cho1=" + cho1 + ", cho2="
				+ cho2 + ", cho3=" + cho3 + ", cho4=" + cho4 + "]";
	}


}
