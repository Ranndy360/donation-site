package boot_donation.controller;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.fabric.Response;

import boot_donation.model.User;
import boot_donation.service.serviceUser;

@RestController
public class UserRestController {
	

	@Autowired
	private serviceUser serviceUser;
	
	@PostMapping("/auth")
	public ModelAndView  auth(@RequestParam String email,@RequestParam String password) {
		//passwords are condifed in base64
        Base64.Decoder decoder = Base64.getDecoder();
        Base64.Encoder encoder = Base64.getEncoder();
        String pass=encoder.encodeToString(password.getBytes(StandardCharsets.UTF_8));
		boolean user=serviceUser.auth(email, pass);
		
		return new ModelAndView("redirect:/index");
	}
	
	@GetMapping("/all-users")
	public String allUsers() {
		 return serviceUser.findAll().toString();
	}
		
	@GetMapping("/save-user")
	public String saveUser(@RequestParam String name,@RequestParam String lastname,@RequestParam String username
			,@RequestParam String password,@RequestParam String id_document,@RequestParam String email,@RequestParam int country_id) {
		User user=new User(name,lastname,username,password,id_document,email,country_id);
		serviceUser.save(user);
		return "Usuario guardado!";
	}
	@GetMapping("/delete-user")
	public String saveUser(@RequestParam int id) {
		
		serviceUser.delete(id);
		return "Usuario eliminado!";
	}
}
