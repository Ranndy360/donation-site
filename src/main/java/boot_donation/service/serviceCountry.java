package boot_donation.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import boot_donation.dao.CountriesRepository;
import boot_donation.dao.UserRepository;
import boot_donation.model.Country;
import boot_donation.model.User;

@Service
@Transactional
public class serviceCountry {

	private final CountriesRepository countriesRepository;

	public serviceCountry(CountriesRepository countriesRepository) {
		
		this.countriesRepository = countriesRepository;
	}
	
	public List<Country> findAll(){
		List<Country> countries=new ArrayList<>();
		for (Country country:countriesRepository.findAll()) {
			countries.add(country);
		}
		return countries;
	}
	
	
}
