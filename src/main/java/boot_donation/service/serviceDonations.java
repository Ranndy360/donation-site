package boot_donation.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import boot_donation.dao.CountriesRepository;
import boot_donation.dao.DonationsRepository;
import boot_donation.model.Country;
import boot_donation.model.Donations;
import boot_donation.model.User;

@Service
@Transactional
public class serviceDonations {
	

	private final DonationsRepository donationsRepository;

	public serviceDonations(DonationsRepository donationsRepository) {
		
		this.donationsRepository = donationsRepository;
	}
	
	public List<Donations> findAll(){
		List<Donations> donations=new ArrayList<>();
		for (Donations donation:donationsRepository.findAll()) {
			donations.add(donation);
		}
		return donations;
	}
	
	public List<Donations> findMyDonations(String user_id){
//		List<Donations> donations=new ArrayList<>();
//		for (Donations donation:donationsRepository.myDonations(user_id)) {
//			donations.add(donation);
//		}
		return donationsRepository.myDonations(user_id);
	}
	
	public void save(Donations donation) {
		donationsRepository.save(donation);
	}
	

}
