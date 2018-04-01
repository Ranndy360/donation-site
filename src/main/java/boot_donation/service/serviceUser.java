package boot_donation.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

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
	
	public User findUser(int id){
		return userRepository.findById(id).get();
	}
	
	public void save(User user) {
		userRepository.save(user);
	}
	
	public void delete(int id) {
//		userRepository.deleteById(id);
	}
	
	//login
	public boolean auth(String email, String password,HttpServletRequest request) {		

		//creating session variable-

		HttpSession session=request.getSession(true);
		for (User user:userRepository.findAll()) {
			String myEmail=user.getEmail();
			String myPassword=user.getPassword();
			if(myEmail.toString().equals(email) && myPassword.toString().equals(password)) {			
	            session.setAttribute("user_id",user.getId());
	            session.setAttribute("user_name",user.getName()+" "+user.getLastname());
				return true;
			}
				
		}

        session.setAttribute("error","Invalid email or password");
		return false;
	}
	
}
