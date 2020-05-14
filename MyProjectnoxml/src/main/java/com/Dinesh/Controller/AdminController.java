package com.Dinesh.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.Dinesh.DAO.UserDaoInterface;
import com.Dinesh.DataBaseEntity.User;


@Controller
@RequestMapping("/users")
public class AdminController {
	
	
	
	@Autowired
	private UserDaoInterface userdao;
	
	//@Autowired
	//private UserDaoInterface userdao;

	
	
	@RequestMapping("/update")
	public String updateuser(@RequestParam("toupdate")int id,Model model) {
		model.addAttribute("userupdate", userdao.getuser(id));
		return "updateuser";
	}
	
	@RequestMapping("/confirmupdate")
	public String page1(@Valid @ModelAttribute("userupdate") User newuser, BindingResult theBindingresult) {

		// dao.saveuser(newuser);
		if (theBindingresult.hasErrors()) {

			return "updateuser";
		}
		
		userdao.saveuser(newuser);
		return "redirect:/user/listuser";
	}
	
	@RequestMapping("/delete")
	public String deleteuser(@RequestParam("todelete")int id,Model model) {
		model.addAttribute("userupdate", userdao.getuser(id));
		userdao.deleteuser(id);
		return "redirect:/user/listuser";
		
	}
	
	
	@RequestMapping("/mailform")
	public String mailform() {
		return "SendMail";
	}
	
	@RequestMapping("/sendmail")
	public String sendmail(@RequestParam("receivers")String to,@RequestParam("subject")String sub,@RequestParam("message")String mess) {
		
		/*SimpleMailMessage message=new SimpleMailMessage();
		String[] receivers=to.split(",");
		for (String tosend : receivers) {
			System.out.println(tosend);
		}
		message.setTo(receivers);
		message.setSubject(sub);
		message.setText(mess);
		mailsender.send(message);*/
		return "SendMail";
	}
	
	@RequestMapping("/suggestsurvey")
	public String suggests() {
		return "UserSurveyDemand";
	}
	
	@RequestMapping("/sendsuggest")
	public String sendsuggest(@RequestParam("from")String from,@RequestParam("receivers")String receiver,@RequestParam("subject")String subject,
			@RequestParam("message")String message) {
		
		/*SimpleMailMessage mess=new SimpleMailMessage();
		mess.setFrom(from);
		mess.setTo(receiver);
		mess.setSubject(subject);
		mess.setText(message);
		mailsender.send(mess);*/
		return "UserSurveyDemand";
	}
	
	
	@RequestMapping("/profile")
	public String profile(Model model,@RequestParam("userid")int id) {
		model.addAttribute("user", userdao.getuser(id));
		return "profile";
	}
	
	@RequestMapping("/surveyforuser")
	public String usersurvey(Model model) {
		model.addAttribute("surveylink", userdao.listsurvey());
		return "surveyuser";
	}
	

	
	
	
}