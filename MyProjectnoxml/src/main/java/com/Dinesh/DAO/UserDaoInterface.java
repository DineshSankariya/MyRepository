package com.Dinesh.DAO;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.Dinesh.DataBaseEntity.LogIn;
import com.Dinesh.DataBaseEntity.Question;
import com.Dinesh.DataBaseEntity.Result;
import com.Dinesh.DataBaseEntity.SurveyTable;
import com.Dinesh.DataBaseEntity.User;

public interface UserDaoInterface {
	

	
	public void saveuser(User user);
	
	public Boolean searchuser(String a,String b);
	
	public Boolean checkAdmin(String a,String b);
	
	public void savequestion(Question que,int id);
	
	public void deletequestion(int id);
	
	public Question getquestion(int id);
	
	public List<Question> getquestion1();
	
	
	public List<User> listcutomer();
	
	public List<SurveyTable> listsurvey();
	
	public Set<Question> listquestion(int id);
	
	public void savesurvey(SurveyTable tocreate);
	
	public SurveyTable getsurvey(int id);
	
	public void deletesurvey(int id);
	
	public User getuser(int id);
	
	public void deleteuser(int id);
	
	public void updatequestion(Question toupdate,SurveyTable sur);
	
	public void savequestion(Question que);
	
	public User getuserid(String mail);
	
	public Map<String, Integer> getresult(SurveyTable id,Question que);


	List<User> getuserrest(String name);
	
	void saveresult(User user,SurveyTable survey,Result result);
	
	 List<Result> getresultonly(SurveyTable id);
	
	
}
