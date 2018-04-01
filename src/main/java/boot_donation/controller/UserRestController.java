package boot_donation.controller;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public ModelAndView  auth(@RequestParam String email,@RequestParam String password,HttpServletRequest request) {
		//passwords are condifed in base64
        Base64.Decoder decoder = Base64.getDecoder();
        Base64.Encoder encoder = Base64.getEncoder();
        String pass=encoder.encodeToString(password.getBytes(StandardCharsets.UTF_8));
		boolean user=serviceUser.auth(email, pass,request);
		if(user)
			return new ModelAndView("redirect:/");
		else
			return new ModelAndView("redirect:/login");
	}
	
	@PostMapping("/create")
	public ModelAndView  create(@RequestParam int id,@RequestParam String name,@RequestParam String lastname,@RequestParam String email,@RequestParam String username
			,@RequestParam String password,@RequestParam String id_document,@RequestParam int country_id,HttpServletRequest request) {
		
		//passwords are condifed in base64
        Base64.Decoder decoder = Base64.getDecoder();
        Base64.Encoder encoder = Base64.getEncoder();
        String pass=encoder.encodeToString(password.getBytes(StandardCharsets.UTF_8));
        String url;

		User user=new User(name,lastname,email,username,pass,id_document,country_id);
        if(id==0) {
        	url="login";
        }else {
        	user.setId(id);
    		HttpSession session=request.getSession(true);	
    		session.setAttribute("message", "Your data had been updating.");	
    		url="profile";
        }

		serviceUser.save(user);
        return new ModelAndView("redirect:/"+url);
	}

	@PostMapping("/profile")
	public ModelAndView profile(@ModelAttribute User user, BindingResult bindingResult, HttpServletRequest request){
		//passwords are condifed in base64
        Base64.Decoder decoder = Base64.getDecoder();
        Base64.Encoder encoder = Base64.getEncoder();
        String pass=encoder.encodeToString(user.getPassword().getBytes(StandardCharsets.UTF_8));
		HttpSession session=request.getSession(true);		
        user.setPassword(pass);
		serviceUser.save(user);
		session.setAttribute("message", "Your data had been updating.");
        return new ModelAndView("redirect:/profile");
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
