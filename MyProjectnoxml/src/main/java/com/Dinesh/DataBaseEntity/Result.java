package com.Dinesh.DataBaseEntity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "Result")
public class Result {
	
	
	@Id
	@Column(name = "rid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int resultid;
	
	@ManyToOne
	@JoinColumn(name = "uid")
	@JsonBackReference
	private User userid;
	
	//@Column(name = "sid")
	//private int surveyid;
	
	@ManyToOne
	@JoinColumn(name="sid")
	@JsonBackReference
	private SurveyTable surveyid;
	
	
	@Column(name = "Question")
	private String que;
	
	@Column(name = "answer")
	private String ans;
	
	@Column(name = "value")
	private int value;
	
	@Column(name = "status")
	private Boolean status;
	
	public Result() {
		
	}

	public Result(String que, String ans, int value, Boolean status) {
		this.que = que;
		this.ans = ans;
		this.value = value;
		this.status = status;
	}


	public int getResultid() {
		return resultid;
	}

	public void setResultid(int resultid) {
		this.resultid = resultid;
	}

	public User getUserid() {
		return userid;
	}

	public void setUserid(User userid) {
		this.userid = userid;
	}

	public SurveyTable getSurveyid() {
		return surveyid;
	}

	public void setSurveyid(SurveyTable surveyid) {
		this.surveyid = surveyid;
	}

	public String getQue() {
		return que;
	}

	public void setQue(String que) {
		this.que = que;
	}

	public String getAns() {
		return ans;
	}

	public void setAns(String ans) {
		this.ans = ans;
	}
	
	
	
	
	public int getValue() {
		return value;
	}



	public void setValue(int value) {
		this.value = value;
	}



	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Result [resultid=" + resultid + ", userid=" + userid + ", surveyid=" + surveyid + ", que=" + que
				+ ", ans=" + ans + ", value=" + value + ", status=" + status + "]";
	}

	

}
