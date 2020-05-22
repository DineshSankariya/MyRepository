package com.Dinesh.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.Dinesh.DataBaseEntity.Question;
import com.Dinesh.DataBaseEntity.Result;
import com.Dinesh.DataBaseEntity.SurveyTable;
import com.Dinesh.DataBaseEntity.User;
import com.Dinesh.DataBaseEntity.UserSurvey;

@Repository
@Service
public class UserDao implements UserDaoInterface {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void saveuser(User newuser) {

		Session currentsession = sessionFactory.getCurrentSession();

		currentsession.saveOrUpdate(newuser);

	}

	@Override
	@Transactional
	public Boolean searchuser(String email, String password) {

		Session currentsession = sessionFactory.getCurrentSession();
		org.hibernate.query.Query<User> query = null;
		String hql;
		List<User> userlist;
		if (email != null && password != null) {

			query = currentsession.createQuery("from User where email like:theemail", User.class);
			query.setParameter("theemail", "%" + email + "%");
			userlist = query.getResultList();

			for (User temp : userlist) {
				System.out.println(temp.toString());
				if (temp.getEmail().equals(email)) {

					if (temp.getPassword().equals(password)) {

						return true;

					}
				}
			}
		}

		return false;
	}

	@Override
	@Transactional
	public Boolean checkAdmin(String email, String password) {
		Session currentsession = sessionFactory.getCurrentSession();
		org.hibernate.query.Query<User> query = null;
		String hql;
		List<User> userlist;
		if (email != null && password != null) {

			query = currentsession.createQuery("from User where email like:theemail", User.class);
			query.setParameter("theemail", "%" + email + "%");
			userlist = query.getResultList();

			for (User temp : userlist) {
				System.out.println(temp.toString());
				if (temp.getEmail().equals("dinesh.dina47@gmail.com")) {
					if (temp.getPassword().equals("dinesh123")) {

						return true;
					}
				}
			}

		}
		return false;
	}

	@Override
	@Transactional
	public void savequestion(Question que, int id) {

		Session currentsession = sessionFactory.getCurrentSession();
		SurveyTable survey = currentsession.get(SurveyTable.class, id);

		try {
			survey.addquestion(que);
		} catch (Exception e) {

			System.out.println("Id value not provided");
		} finally {
			id = que.getSurvey().getId();
			SurveyTable surveytosave = currentsession.get(SurveyTable.class, id);
			surveytosave.addquestion(que);
		}

		currentsession.saveOrUpdate(que);
	}

	@Override
	@Transactional
	public List<Question> getquestion1() {

		Session currentsession = sessionFactory.getCurrentSession();

		org.hibernate.Query<Question> query = null;
		List<Question> list;
		query = currentsession.createQuery("from Question ", Question.class);

		list = query.getResultList();
		return list;

	}

	@Override
	@Transactional
	public List<User> listcutomer() {

		Session currentsession = sessionFactory.getCurrentSession();

		List<User> customer;

		org.hibernate.Query<User> quer = null;

		quer = currentsession.createQuery("from User", User.class);

		customer = quer.getResultList();

		return customer;

	}

	@Override
	@Transactional
	public List<SurveyTable> listsurvey() {
		Session currentsession = sessionFactory.getCurrentSession();

		List<SurveyTable> survey;

		org.hibernate.Query<SurveyTable> quer = null;

		quer = currentsession.createQuery("from SurveyTable  ORDER BY id", SurveyTable.class);

		survey = quer.getResultList();

		return survey;
	}

	@Override
	@Transactional
	public Set<Question> listquestion(int id) {
		Session currentsession = sessionFactory.getCurrentSession();
		SurveyTable quest = currentsession.get(SurveyTable.class, id);
		Set<Question> questions;
		System.out.println(quest.getQuestions());
		questions = quest.getQuestions();
		return questions;

	}

	@Override
	@Transactional
	public void savesurvey(SurveyTable tocreate) {
		Session currentsession = sessionFactory.getCurrentSession();

		currentsession.saveOrUpdate(tocreate);

		List<SurveyTable> surveylist = listsurvey();

		System.out.println("New Survey Created");

	}

	@Override
	@Transactional
	public SurveyTable getsurvey(int id) {

		Session currentsession = sessionFactory.getCurrentSession();

		return currentsession.get(SurveyTable.class, id);

	}

	@Override
	@Transactional
	public void deletesurvey(int id) {
		Session currentsession = sessionFactory.getCurrentSession();

		SurveyTable quest = currentsession.get(SurveyTable.class, id);

		currentsession.delete(quest);

	}

	@Override
	@Transactional
	public void deletequestion(int id) {

		Session currentsession = sessionFactory.getCurrentSession();
		Question todelete = currentsession.get(Question.class, id);
		currentsession.delete(todelete);
	}

	@Override
	@Transactional
	public User getuser(int id) {

		Session currentsession = sessionFactory.getCurrentSession();
		System.out.println(id);
		User tofind = currentsession.get(User.class, id);
		System.out.println(tofind.toString());
		return tofind;

	}

	@Override
	@Transactional
	public void deleteuser(int id) {
		Session currentsession = sessionFactory.getCurrentSession();
		User todelete = currentsession.get(User.class, id);
		currentsession.delete(todelete);
	}

	@Override
	@Transactional
	public Question getquestion(int id) {
		Session currentsession = sessionFactory.getCurrentSession();
		Question toupdate = currentsession.get(Question.class, id);
		return toupdate;
	}

	@Override
	@Transactional
	public void updatequestion(Question toupdate,SurveyTable sur) {

		Session currentsession = sessionFactory.getCurrentSession();
		sur.addquestion(toupdate);
		currentsession.saveOrUpdate(toupdate);
		
		 
	}

	@Override
	@Transactional
	public void savequestion(Question que) {
		Session currentsession = sessionFactory.getCurrentSession();
		currentsession.saveOrUpdate(que);
	}

	@Override
	@Transactional
	public User getuserid(String mail) {

		Session currentsession = sessionFactory.getCurrentSession();

		org.hibernate.Query<User> quer = null;

		quer = currentsession.createQuery(" from User where email like:theemail", User.class);
		quer.setParameter("theemail", "%" + mail + "%");

		System.out.println(quer.getResultList());
		List<User> id = quer.getResultList();
		System.out.println(id.get(0).toString());
		return id.get(0);
		
	}

	@Override
	@Transactional
	public List<User> getuserrest(String name) {

		Session currentsession = sessionFactory.getCurrentSession();

		org.hibernate.Query<User> quer = null;

		quer = currentsession.createQuery(" from User where first_name like:name", User.class);
		quer.setParameter("name", name);

		System.out.println(quer.getResultList());
		List<User> user = quer.getResultList();
		System.out.println(user.get(0).toString());

		return user;
	}

	/**
	 *
	 */
	/**
	 *
	 */
	@SuppressWarnings("deprecation")
	@Override
	@Transactional
	public Map<String, Integer> getresult(SurveyTable id, Question newresult) {

		Session currentsession = sessionFactory.getCurrentSession();

		String cho1 = newresult.getCho1();
		String cho2 = newresult.getCho2();
		String cho3 = newresult.getCho3();
		String cho4 = newresult.getCho4();
		String query = "Select ans,value from Result where ans=:name1 OR ans=:name2 OR ans=:name3 OR ans=:name4";
		org.hibernate.query.Query quer= currentsession.createQuery(query);	
		quer.setParameter("name4", cho4);
		quer.setParameter("name3", cho3);
		quer.setParameter("name2", cho2);
		quer.setParameter("name1", cho1);
		List<Object[]> rows=quer.list();
		for (Object[] long1 : rows) {
			System.out.println("---------------------------------");
			System.out.println("Answer ==> "+(String)long1[0]+", Value ==> "+(Integer)long1[1]);
		}
//		quer.setParameter("name1", cho1);
//		Long a=quer.uniqueResult();
//		
//		org.hibernate.Query<Long> quer1 = null;
//		String query1 = "Select Count(value) from Result where  ans=:name2 ";
//		quer1 = currentsession.createQuery(query1, Long.class);
//		quer1.setParameter("name2", cho2);
//		Long b=quer1.uniqueResult();
//		
//		
//		org.hibernate.Query<Long> quer2 = null;
//		String query2 = "Select Count(value) from Result where  ans=:name3 ";
//		quer2 = currentsession.createQuery(query2, Long.class);
//		quer2.setParameter("name3", cho3);
//		Long c=quer2.uniqueResult();
//		
//		org.hibernate.Query<Long> quer3 = null;
//		String query3 = "Select Count(value) from Result where  ans=:name4 ";
//		quer3 = currentsession.createQuery(query3, Long.class);
//		quer3.setParameter("name4", cho4);
//		Long d=quer3.uniqueResult();
		
//		System.out.println(a+" "+b+" "+c+" "+d);
//		quer.setParameter("name1", cho1);
//		quer.setParameter("name2", cho2);
//		quer.setParameter("name3", cho3);
//		quer.setParameter("name4", cho4);

//		List<Integer> user = quer.getResultList();
//		for (Integer result2 : user) {
//			System.out.println(result2);
//		}
//		// System.out.println(user.get(0).toString());
//		org.hibernate.Query<String> qu = null;
//		String query1 = "Select ans from Result where ans=:name1 OR ans=:name2 OR ans=:name3 OR ans=:name4";
//		qu = currentsession.createQuery(query1, String.class);
//
//		qu.setParameter("name1", cho1);
//		qu.setParameter("name2", cho2);
//		qu.setParameter("name3", cho3);
//		qu.setParameter("name4", cho4);
//		
//		List<String> user1 = qu.getResultList();
//		for (String result2 : user1) {
//			System.out.println(result2);
//		}
		
		Map<String, Integer> user=new HashMap<String,Integer>();
		/*
		 * user.put(cho1, a.get(0)); user.put(cho2, a.get(1)); user.put(cho3, a.get(2));
		 * user.put(cho4, a.get(3));
		 */
		for (Object[] objects : rows) {
			String key=(String)objects[0];
			int value=(Integer)objects[1];
			if(user.containsKey(key)) {
				user.replace(key,user.get(key)+value);
			}else {
				user.put(key, value);
			}
		}
		return user;

	}

	@Override
	@Transactional
	public void saveresult(User user, SurveyTable survey, Result result) {

		Session currentsession = sessionFactory.getCurrentSession();
		User newuser = currentsession.get(User.class, user.getId());
		SurveyTable table = currentsession.get(SurveyTable.class, survey.getId());
		newuser.addresult(result);
		table.addres(result);
		currentsession.saveOrUpdate(result);

	}

	@Override
	@Transactional
	public List<Result> getresultonly(SurveyTable id) {

		Session currentsession = sessionFactory.getCurrentSession();
		SurveyTable sur = currentsession.get(SurveyTable.class, id.getId());
		/*
		 * org.hibernate.Query<Result> quer = null; quer =
		 * currentsession.createQuery(" from Result where surveyid="+id.getId(),
		 * Result.class); quer.setParameter("id",id.getId());
		 */
		List<Result> user = (List<Result>) sur.getResult();
		return user;
	}

	@Override
	@Transactional
	public Boolean sendsurvey(int sid, int uid) {
		
		Session cSession=sessionFactory.getCurrentSession();
		SurveyTable surveyTable=cSession.get(SurveyTable.class, sid);
		User user=cSession.get(User.class, uid);
		UserSurvey userSurvey=new UserSurvey();
		surveyTable.addusersurvey(userSurvey);
		user.addusersurvey(userSurvey);		
		try {
			cSession.saveOrUpdate(userSurvey);
			return true;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			
		}
			return false;
		
	}

}
