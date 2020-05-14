package com.Dinesh.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Mycontroller {
	
	@GetMapping("/")
	public String homepage() {
		return "home";
	}
	
}
