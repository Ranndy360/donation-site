package boot_donation.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import boot_donation.dao.UserRepository;
import boot_donation.model.User;

@Service
@Transactional
public class serviceUser {

	private final UserRepository userRepository;

	public serviceUser(UserRepository userRepository) {
		
		this.userRepository = userRepository;
	}
	
	public List<User> findAll(){
		List<User> users=new ArrayList<>();
		for (User user:userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	public void save(User user) {
		userRepository.save(user);
	}
	
	public void delete(int id) {
//		userRepository.deleteById(id);
	}
	
	public boolean auth(String email, String password) {		
//		List<User> users=new ArrayList<>();
		for (User user:userRepository.findAll()) {
			if(user.getEmail()==email && user.getPassword()==password) {
				
				return true;
			}
				
		}
		return false;
	}
	
}
