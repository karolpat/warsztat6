package pl.coderslab.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.context.request.WebRequest;

import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

@Controller
public class RegistController {

	@Autowired
	private UserRepository uRepository;

	@GetMapping(value = "/user/registration")
	public String showRegistrationForm() {
		return "/regist/registration";
	}

	@PostMapping("/user/registration")
	public String addUser(@Valid User user, BindingResult bresult, Model model) {

		if (bresult.hasErrors()) {

			model.addAttribute("error", bresult.getFieldError());
			return "/regist/registration";

		} else {
			uRepository.save(user);
			return "git";
		}

	}
	
	@ModelAttribute("user")
	public User user() {
		User user = new User();
		return user;
	}
	
}
