package boot_donation.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import boot_donation.dao.InstitutionRepository;
import boot_donation.model.Institution;
import boot_donation.model.User;


@Service
@Transactional
public class serviceInstitution {

	private final InstitutionRepository institutionRepository;

	public serviceInstitution(InstitutionRepository institutionRepository) {
		
		this.institutionRepository = institutionRepository;
	}
	
	public List<Institution> findAll(){
		List<Institution> institutions=new ArrayList<>();
		for (Institution institution:institutionRepository.findAll()) {
			institutions.add(institution);
		}
		return institutions;
	}
	
	public Institution findInstitution(int id){
		return institutionRepository.findById(id).get();
	}
	
	public void save(Institution institution) {
		institutionRepository.save(institution);
	}
	
	public void delete(int id) {
		institutionRepository.deleteById(id);
	}
	
}
