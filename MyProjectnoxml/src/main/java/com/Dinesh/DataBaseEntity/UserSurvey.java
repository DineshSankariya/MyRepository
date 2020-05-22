package com.Dinesh.DataBaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "usersurvey")
public class UserSurvey {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private Integer uid;
	
	@ManyToOne
	@JoinColumn(name="uid")
	private User user;
	
	@ManyToOne
	@JoinColumn(name="sid")
	private SurveyTable surveyTable;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public SurveyTable getSurveyTable() {
		return surveyTable;
	}

	public void setSurveyTable(SurveyTable surveyTable) {
		this.surveyTable = surveyTable;
	}
	
	

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	@Override
	public String toString() {
		return "UserSurvey [user=" + user.toString() + ", surveyTable=" + surveyTable.toString() + "]";
	}
	
	
	
	
	
}
