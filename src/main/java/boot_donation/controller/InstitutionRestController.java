package boot_donation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import boot_donation.model.Institution;
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
	public String saveInstitution(@RequestParam String name,@RequestParam String description) {
		Institution institution=new Institution(name,description);
		serviceinstitution.save(institution);
		return "Institution saved!";
	}
	@GetMapping("/delete-institution")
	public String saveInstitution(@RequestParam int id) {
		
		serviceinstitution.delete(id);
		return "Institution deleted!";
	}
}
