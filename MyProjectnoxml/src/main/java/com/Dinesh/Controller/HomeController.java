package com.Dinesh.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Dinesh.DAO.UserDaoInterface;
import com.Dinesh.DataBaseEntity.Question;
import com.Dinesh.DataBaseEntity.Result;
import com.Dinesh.DataBaseEntity.SurveyTable;
import com.Dinesh.DataBaseEntity.User;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("/user")
public class HomeController {


	private Map<Integer, SurveyTable> surveydetails = new HashMap<Integer, SurveyTable>();

	@Autowired
	private UserDaoInterface userdao;

	
	@GetMapping("/init")
	public String homepage(Model model) {

		return "NewHomePageStyle";
	}

	@RequestMapping("/home")
	public String home() {
		return "Layout";
	}

	@RequestMapping("/form")
	public String form(Model model) {

		model.addAttribute("user", new User());
		return "bootstra";
	}

	@RequestMapping("/confirm")
	public String page1(@Valid @ModelAttribute("user") User newuser) {

		userdao.saveuser(newuser);
		/*
		 * MimeMessage mess=mailsender.createMimeMessage(); MimeMessageHelper simple;
		 * simple=new MimeMessageHelper(mess); //SimpleMailMessage simple=new
		 * SimpleMailMessage(); String
		 * messagecontent="Hey "+newuser.getFname()+" "+newuser.getLname()
		 * +" welcome to surveytour online web application and we are happy to invite you to participate in our future survey and you have Signed Up successfully \n Your account details,\n Name : "
		 * +newuser.getFname()+" "+newuser.getLname()+",\n Email : "+newuser.getEmail()
		 * +",\n Mobile Number : "+newuser.getMob_num()+" ";
		 * 
		 * try { simple.setTo(newuser.getEmail()); simple.setSubject("SurveyTour.com");
		 * simple.setText(messagecontent); } catch (MessagingException e) { // TODO
		 * Auto-generated catch block e.printStackTrace(); }
		 * 
		 * mailsender.send(mess);
		 */
		return "NewHomePage";

	}

	/*public void sendmailmethod(User newuser) {
		MimeMessage mess = mailsender.createMimeMessage();
		MimeMessageHelper simple;
		simple = new MimeMessageHelper(mess);
		// SimpleMailMessage simple=new SimpleMailMessage();
		String messagecontent = "Hey " + newuser.getFname() + " " + newuser.getLname()
				+ " welcome to surveytour online web application and we are happy to invite you to participate in our future survey and you have Signed Up successfully \n Your account details,\n Name : "
				+ newuser.getFname() + " " + newuser.getLname() + ",\n Email : " + newuser.getEmail()
				+ ",\n Mobile Number : " + newuser.getMob_num() + " ";

		try {
			simple.setTo(newuser.getEmail());
			simple.setSubject("SurveyTour.com");
			simple.setText(messagecontent);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		mailsender.send(mess);
	}*/

	@RequestMapping("/Log")
	public String log(Model model) {

		return "logpage";
	}

	@RequestMapping("/Log?logout")
	public String logout(Model model) {
		return "logpage";
	}

	@RequestMapping("/LogIn")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {

		if (userdao.searchuser(email, password)) {

			if (userdao.checkAdmin(email, password)) {
				model.addAttribute("Surveys", userdao.listsurvey());
				model.addAttribute("userid", userdao.getuserid(email));
				return "Admin";
			}
			model.addAttribute("Surveys", userdao.listsurvey());
			model.addAttribute("surveylink", userdao.listsurvey());
			model.addAttribute("userid", userdao.getuserid(email));
			return "Newfile";
		}

		return "logpage";

	}

	@RequestMapping(value = "/savequestion")
	public String saveque(@Valid @ModelAttribute("question") Question questiontoadd, BindingResult result,
			@RequestParam("surid") int id) {

		if (result.hasErrors()) {
			return "addquestion";
		}

		userdao.savequestion(questiontoadd, id);
		return "addquestion";

	}

	@RequestMapping("/addqueform")
	public String addq(@RequestParam("qlink") int id, Model model) {
		model.addAttribute("surveyid", id);
		model.addAttribute("question", new Question());

		return "addquestion";
	}

	@RequestMapping("/surveytwo")
	public String page2() {

		return "survey2";
	}

	@RequestMapping("/surveyone")
	public String page1(Model model) {
		model.addAttribute("surveyone", userdao.getquestion1());
		return "survey1";
	}

	@RequestMapping(value = "/listcustomer", method = RequestMethod.GET)
	public @ResponseBody List<User> customer(Model model) {

		List<User> result = userdao.listcutomer();

		System.out.println("return list");

		model.addAttribute("users", result);

		return result;
	}

	@RequestMapping("/createsurvey")
	public String createsurvey(Model model,HttpServletRequest request) {

		model.addAttribute("createsurvey", new SurveyTable());
		
		return "surveyform";

	}

	@RequestMapping("/savesurvey")
	public String savesurvey(@ModelAttribute("createsurvey") SurveyTable tosave) {

		surveydetails.put(tosave.getId(), tosave);
		userdao.savesurvey(tosave);
		
		  /*List<User> recievers; SimpleMailMessage message=new SimpleMailMessage();
		  recievers=userdao.listcutomer(); String[] rec=new String[recievers.size()];
		  for(int i=0;i<recievers.size();i++) { rec[i]=recievers.get(i).getEmail(); }
		  for (String s : rec) { System.out.println(s); }
		  
		  
		  message.setTo(rec); message.setSubject("New survey");
		  message.setText("We have created a new survey "+tosave.getName());
		  mailsender.send(message);*/
		 

		return "redirect:/user/admin";

	}

	@RequestMapping("/admin")
	public String admin(Model model) {
		model.addAttribute("Surveys", userdao.listsurvey());
		return "Admin";

	}

	@RequestMapping("/surveyupdate")
	public String updatesurvey(@RequestParam("link") int id, Model model) {

		SurveyTable update = userdao.getsurvey(id);

		model.addAttribute("createsurvey", update);

		return "update-survey";

	}

	@RequestMapping("/deletesurvey")
	public String deletesurvey(@RequestParam("deletelink") int id, Model model) {

		userdao.deletesurvey(id);

		return "redirect:/user/admin";

	}

	@RequestMapping("/surveypage")
	public String surveypage(Model model, @RequestParam("surveylist") int id, HttpServletRequest request) {

		model.addAttribute("surveylink", userdao.listquestion(id));
		model.addAttribute("surveyid", request.getParameter("surveylist"));
		model.addAttribute("userid", request.getParameter("userid"));
		return "survey1";
	}

	@RequestMapping("/alterquestion")
	public String alterquestions(Model model, @RequestParam(value = "alterquestion") int id) {
		model.addAttribute("surveylink", userdao.listquestion(id));
		return "alterquestion";
	}

	@RequestMapping("/deletequestion")
	public String deleteque(@RequestParam("deleteqlink") int id, Model model) {

		userdao.deletequestion(id);

		return "redirect:/user/admin";

	}

	@RequestMapping("/listuser")
	public String Listuser(Model model) {
		model.addAttribute("Users", userdao.listcutomer());
		return "Listusers";
	}

	@RequestMapping("/userhome")
	public String userhome(Model model) {
		model.addAttribute("surveylink", userdao.listsurvey());
		return "confirmLog";
	}

	@RequestMapping("/updatequestion")
	public String updateque(@RequestParam("updateqlink") int id, Model model) {

		model.addAttribute("question", userdao.getquestion(id));
		Question question = userdao.getquestion(id);
		System.out.println(question.getSurvey().getId());
		model.addAttribute("surveyid", question.getSurvey().getId());
		model.addAttribute("question",question);
		return "updatequestion";

	}

	@RequestMapping("/getsurveyid")
	@ResponseBody
	private Question getsurveyid(Question question) {

		return userdao.getquestion(question.getQid());
	}

	@RequestMapping("/saveupdatequestion")
	public String Saveupdatequestion(@Valid @ModelAttribute("question") Question toupdate, BindingResult result,
			Model model,HttpServletRequest request) {
		int id=Integer.parseInt(request.getParameter("surveyid"));
		System.out.println(id);
		if (result.hasErrors()) {
			model.addAttribute("question", toupdate);
			return "updatequestion";
		}
		System.out.println("Surveyid ===> "+id);
		userdao.updatequestion(toupdate,userdao.getsurvey(id));
		return "redirect:/user/admin";

	}

	@RequestMapping("/ajax")
	@ResponseBody
	public List<User> getusers() {

		return userdao.listcutomer();
	}

	@RequestMapping("/surveypag")
	public String viewsurveylist(Model model,HttpServletRequest request) {
		
		String idString=request.getParameter("userid");
		model.addAttribute("useridonly", idString);
		System.out.println(idString);
		model.addAttribute("surveylink", userdao.listsurvey());
		return "Surveypage";
	}

	@RequestMapping("/profile")
	public String profile(Model model, @RequestParam(value = "toupdate", required = true) int id) {
		model.addAttribute("user", userdao.getuser(id));
		return "profile";
	}

	@RequestMapping("/list/{fname}")
	@ResponseBody
	public User listus(@PathVariable String fname) {
		List<User> users = new ArrayList<>();
		users = userdao.getuserrest(fname);
		return users.get(0);
	}

	@RequestMapping("/surveysuccess")
	public String succes(HttpServletRequest request, HttpServletResponse response) {
		/*
		 * String[] q=request.getParameterValues("questionid"); for (String a : q) {
		 * System.out.println(a+" => "+request.getParameter(a+"_answer")); } try {
		 * 
		 * String html="<i>You Have successfully submited the survey</i>"; PrintWriter
		 * pr=response.getWriter(); response.setContentType("text/html");
		 * response.setCharacterEncoding("UTF-8"); pr.print(html); pr.flush(); } catch
		 * (IOException e) { // TODO Auto-generated catch block e.printStackTrace(); }
		 */

		int userid = Integer.parseInt(request.getParameter("userid"));
		int surveyid = Integer.parseInt(request.getParameter("surveyid"));
		User save = userdao.getuser(userid);
		SurveyTable survey = userdao.getsurvey(surveyid);
		String[] q = request.getParameterValues("questionid");
		for (String a : q) {

			
			int qid=Integer.parseInt(a);
			Question que=userdao.getquestion(qid);
			String question=request.getParameter(a+"_question");
			String ans=request.getParameter(a+"_answer");
			int value=0;
			if(ans.equalsIgnoreCase(que.getCho1())) {
				value=1;
			}else if (ans.equalsIgnoreCase(que.getCho2())) {
				value=1;
			}else if (ans.equalsIgnoreCase(que.getCho3())) {
				value=1;
			}else if (ans.equalsIgnoreCase(que.getCho4())) {
				value=1;
			}else {
				value=0;
			}
			Result res = new Result(question, ans,value,true);
			
			System.out.println(res.toString());
			System.out.println(value);
			userdao.saveresult(save, survey, res);

		}

		try {

			String html = "<i>You Have successfully submited the survey</i>";
			PrintWriter pr = response.getWriter();
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			pr.print(html);
			pr.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "Responsefile";

	}

	/*
	 * @RequestMapping("/chart/{surveyid}")
	 * 
	 * @ResponseBody public List<Result> chart(HttpServletRequest
	 * request, @PathVariable("surveyid") String id, HttpServletResponse response) {
	 * 
	 * // String sid=request.getParameter("surveyid"); System.out.println(id); int
	 * surid = Integer.parseInt(id); // System.out.println(surid); //
	 * System.out.println(userdao.getsurvey(surid).toString()); //
	 * System.out.println("-------------------"); SurveyTable survey =
	 * userdao.getsurvey(surid); List<Result> result = (List<Result>)
	 * survey.getResult(); System.out.println(result.size()); for (Result result2 :
	 * result) { System.out.println(result2.toString()); }
	 * 
	 * return result;
	 * 
	 * }
	 */

	@RequestMapping("/result/{surveyid}")
	@ResponseBody
	public Map<String, Integer> listresult(@PathVariable String surveyid,Model model,HttpServletResponse response) {
		

		String c=null;
		SurveyTable s=userdao.getsurvey(Integer.parseInt(surveyid));
		Set<Question> result= s.getQuestions();
		System.out.println(s.toString());
		Map<String, Integer> re=new HashMap<String, Integer>();
		Question que=null;
		for (Question result2 : result) {
			que=result2;
		}
		re=userdao.getresult(s,que);		
		 ObjectMapper obj=new ObjectMapper();
		 try { 
			  
		      c=obj.writeValueAsString(re);
		      System.out.println(c.toString());
		      
		  } 
		  catch (IOException e) {
			 e.printStackTrace();
		  }
		// model.addAttribute("result",re);
		
		/*
		 * try { String b=obj.writeValueAsString(re); try { PrintWriter
		 * pr=response.getWriter(); pr.write(b); } catch (IOException e) { // TODO
		 * Auto-generated catch block e.printStackTrace(); } System.out.println(b); }
		 * catch (JsonProcessingException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */
		  
		
		return re;
		
	}

	@RequestMapping("/result")
	public String result(HttpServletRequest request, Model model) {

		String id = request.getParameter("surveyid");
		int surid = Integer.parseInt(id);
		model.addAttribute("surveyid", surid);
		model.addAttribute("surveyname", userdao.getsurvey(surid).getName());
		return "Resultsurvey";

	}
	
	
	
	
}
