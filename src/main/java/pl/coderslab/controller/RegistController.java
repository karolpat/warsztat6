package pl.coderslab.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

@Controller
public class RegistController {

	@Autowired
	private UserRepository uRepository;

	@GetMapping(value = "/user/reg")
	public String showRegistForm() {
		return "/regist/registration";
	}

	@PostMapping("/user/reg")
	public String addUser(@Valid User user, BindingResult bresult, Model model) {

		if (bresult.hasErrors()) {

			model.addAttribute("errorReg", bresult.getFieldError());
			return "/regist/registration";

		} else {
			uRepository.save(user);
			return "git";
		}

	}
	@GetMapping("/user/login")
	public String showLoginForm() {
		return "/regist/login";
	}
	
	
	@PostMapping("/user/login")
	public String login(@Valid User user, BindingResult bresult, Model model) {
		
		if (bresult.hasErrors()) {

			model.addAttribute("errorLog", bresult.getFieldError());
			return "/regist/login";
		}else {
			return "git";
		}

	}

	

	@ModelAttribute("user")
	public User user() {
		User user = new User();
		return user;
	}

}
