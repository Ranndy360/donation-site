package boot_donation.controller;

import java.io.*;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.util.Date;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import boot_donation.model.User;
import boot_donation.service.serviceCountry;
import boot_donation.service.serviceDonations;
import boot_donation.service.serviceInstitution;
import boot_donation.service.serviceUser;

@Controller
public class MainController {
	//routes to navigate at donation_site
	@Autowired
	private serviceUser serviceUser;
	@Autowired
	private serviceCountry servicecountry;
	@Autowired
	private serviceInstitution serviceinstitution;
	@Autowired
	private serviceDonations servicedonations;
	
	@GetMapping("/")
	public String home(HttpServletRequest request) {
		HttpSession sesion=request.getSession(true);        
		request.setAttribute("institutions", serviceinstitution.findAll());//all the institutions
		File archivo = null;
	      FileReader fr = null;
	      BufferedReader br = null;
	      File directory = new File("");
          boolean flag=false;
	      ArrayList<String> visitsList = new ArrayList<String>();
         //today date
         SimpleDateFormat date = new SimpleDateFormat("dd-MM-yyyy");
         Date today=new Date();
         String today_format=date.format(today);
         int visits=0;

	      try {
	         // Open the file
	         archivo = new File (directory.getAbsolutePath()+"/visits.txt");
	         fr = new FileReader (archivo);
	         br = new BufferedReader(fr);
	         // Reading file
	         String line;
	         while((line=br.readLine())!=null) {//each line
	        	 String[] parts = line.split("\\|");
	        	 visitsList.add(line);//remember the data
	        	 if(parts[0].equals(today_format))
	        		 visits=Integer.parseInt(parts[1]);
	         }
	         
	         
	      }
	      catch(Exception e){
	         e.printStackTrace();
	      }finally{
	         // Close the file manager if something is wrong
	         try{                    
	            if( null != fr ){   
	               fr.close();     
	            }                  
	         }catch (Exception e2){ 
	            e2.printStackTrace();
	         }
	      }
	      //writing on file
	      FileWriter fichero = null;
	        PrintWriter pw = null;
	        try
	        {
	            fichero = new FileWriter(directory.getAbsolutePath()+"/visits.txt");
	            pw = new PrintWriter(fichero);
	            String line="";
	            String[] parts;
	            visits++;
				 Iterator<String> visitsIterator = visitsList.iterator();
				 while(visitsIterator.hasNext()){
					 line=visitsIterator.next();
		        	 parts = line.split("\\|");
		        	 if(parts[0].equals(today_format)) {
		        		 pw.println(parts[0]+"|"+visits);
		        		 flag=false;
		        	 }
		        	 else {
		        		 pw.println(line);
		        		 flag=true;
		        	 }
		        		 
				 }
				 //check if today is a new register
				 if(flag)
					 pw.println(today_format+"|"+visits);
				 
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	           try {
	           // Close file
	           if (null != fichero)
	              fichero.close();
	           } catch (Exception e2) {
	              e2.printStackTrace();
	           }
	        }
            request.setAttribute("visits", visits);
		return "index";
	}
	
	@GetMapping("/create")
	public String create(HttpServletRequest request) {
		request.setAttribute("countries", servicecountry.findAll());
		return "create";
	}
	

	@GetMapping("/profile")
	public String profile(HttpServletRequest request) {
		HttpSession session=request.getSession(true);	
		String id=session.getAttribute("user_id").toString();
		int id_user=Integer.parseInt(id);
		User user= serviceUser.findUser(id_user);
		//passwords are condifed in base64
        Base64.Decoder decoder = Base64.getDecoder();
        Base64.Encoder encoder = Base64.getEncoder();
        byte[] decodedByteArray = decoder.decode(user.getPassword());
        String pass=new String(decodedByteArray);
        user.setPassword(pass);
		request.setAttribute("user",user);
		request.setAttribute("countries", servicecountry.findAll());
		return "profile";
	}
	
	@GetMapping("/donations")
	public String donations(HttpServletRequest request) {
		HttpSession session=request.getSession(true);
		if(session.getAttribute("user_id")==null)			
			return "login";
		else {
			String user_id=session.getAttribute("user_id").toString();
			request.setAttribute("donations", servicedonations.findMyDonations(user_id));
			return "donations";
		}
	}
	
	@GetMapping("/login")
	public String login(HttpServletRequest request) {
		HttpSession session=request.getSession(true);
		
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		//se destruyen las sesiones creadas
		HttpSession session=request.getSession(true);
		session.setAttribute("user_name",null);
		session.setAttribute("user_id",null);
		return "login";
	}
}
