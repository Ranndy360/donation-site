package boot_donation.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import boot_donation.model.Donations;
import boot_donation.model.Institution;
import boot_donation.service.serviceDonations;
import boot_donation.service.serviceInstitution;

@RestController
public class DonationsRestController {
	

	@Autowired
	private serviceDonations servicedonations;
	@Autowired
	private serviceInstitution serviceinstitution;
	
	@PostMapping("/donate")
	public ModelAndView  donate(@RequestParam int id,@RequestParam String card,@RequestParam double quantity,HttpServletRequest request) {
		
		Institution institution=serviceinstitution.findInstitution(id);
		double totalDonated=institution.getDonated();
		totalDonated=(totalDonated+quantity);
		HttpSession session=request.getSession(true);   
		String cardSub=card.substring(card.length()-3, card.length());
		String idUser=session.getAttribute("user_id").toString();
		int id_user=Integer.parseInt(idUser);
		//create a new register in the donations table
		Donations donate=new Donations(new Date(),totalDonated,id,id_user,"***********"+cardSub,institution.getName());
		servicedonations.save(donate);
		//update the new mount of institutions mount
		institution.setDonated(totalDonated);
		serviceinstitution.save(institution);
        return new ModelAndView("redirect:/");
	}
}
