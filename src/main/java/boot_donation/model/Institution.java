package boot_donation.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="institution")
public class Institution implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	private String description;
	private double donated;
	
	public Institution() {}
	
	public Institution(String name, String description,double donated) {
		super();
		this.name = name;
		this.description = description;
		this.donated = donated;
	}


	public double getDonated() {
		return donated;
	}

	public void setDonated(double donated) {
		this.donated = donated;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Institution [id=" + id + ", name=" + name + ", description=" + description + ", donated=" + donated
				+ "]";
	}
	
}
