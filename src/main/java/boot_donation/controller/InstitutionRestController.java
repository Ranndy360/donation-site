package boot_donation.controller;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import boot_donation.model.Institution;
import boot_donation.model.User;
import boot_donation.service.serviceInstitution;

@RestController
public class InstitutionRestController {


	@Autowired
	private serviceInstitution serviceinstitution;
	
	
	@GetMapping("/all-institutions")
	public String allInstitutions() {
		 return serviceinstitution.findAll().toString();
	}
		
	@GetMapping("/save-institution")
	public String saveInstitution(@RequestParam String name,@RequestParam String description,@RequestParam double donated) {
		Institution institution=new Institution(name,description,donated);
		serviceinstitution.save(institution);
		return "Institution saved!";
	}
	@GetMapping("/delete-institution")
	public String saveInstitution(@RequestParam int id) {
		
		serviceinstitution.delete(id);
		return "Institution deleted!";
	}
}
