package boot_donation.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import boot_donation.service.serviceInstitution;
import boot_donation.service.serviceUser;

@Controller
public class MainController {

	@Autowired
	private serviceUser serviceUser;
	@Autowired
	private serviceInstitution serviceinstitution;
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		request.setAttribute("institutions", serviceinstitution.findAll());
		return "index";
	}
	
	@GetMapping("/login")
	public String login(HttpServletRequest request) {
//		request.setAttribute("institutions", serviceinstitution.findAll());
		return "login";
	}
}
