package pl.coderslab.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;
@Controller
public class LoginController {

	
	@Autowired
	private UserRepository uRepo;
	
//	@PostMapping("/user/sign")
//	public String login(@Valid User user, BindingResult bresult, Model model) {
//		
//		if (bresult.hasErrors()) {
//
//			model.addAttribute("errorLog", bresult.getFieldError());
//			return "/regist/registration";
//		}else {
//			return "git";
//		}
//
//	}
	
	@ModelAttribute("user")
	public User user() {
		User user = new User();
		return user;
	}
}
