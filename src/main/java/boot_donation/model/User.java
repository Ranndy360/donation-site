package boot_donation.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="user")
public class User implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String lastname;
	private String user;
	private String password;
	private String id_document;
	private String email;
	private int country_id;
	
	public User() {}
	
	public User( String name, String lastname,  String email,String user, String password, String id_document,
			int country_id) {
		super();
		
		this.name = name;
		this.lastname = lastname;
		this.user = user;
		this.password = password;
		this.id_document = id_document;
		this.email = email;
		this.country_id = country_id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getId_document() {
		return id_document;
	}
	public void setId_document(String id_document) {
		this.id_document = id_document;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getCountry_id() {
		return country_id;
	}
	public void setCountry_id(int country_id) {
		this.country_id = country_id;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", lastname=" + lastname + ",email=" + email + ", user=" + user + ", password="
				+ password + ", id_document=" + id_document + ",  country_id=" + country_id + "]";
	}
	
}
