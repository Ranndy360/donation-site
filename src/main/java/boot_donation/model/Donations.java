package boot_donation.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name="donations")
public class Donations  implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Temporal(TemporalType.TIMESTAMP)
	private Date date;
	private double mount;
	private int institution_id;
	private int user_id;
	private String card;
	private String institution_name;
	
	public Donations() {}

	public Donations(Date date, double mount, int institution_id, int user_id, String card,String institution_name) {
		super();
		this.date = date;
		this.mount = mount;
		this.institution_id = institution_id;
		this.user_id = user_id;
		this.card = card;
		this.institution_name=institution_name;
	}
	
	public String getInstitution_name() {
		return institution_name;
	}
	
	public void setInstitution_name(String institution_name) {
		this.institution_name=institution_name;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getMount() {
		return mount;
	}

	public void setMount(double mount) {
		this.mount = mount;
	}

	public int getInstitution_id() {
		return institution_id;
	}

	public void setInstitution_id(int institution_id) {
		this.institution_id = institution_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getCard() {
		return card;
	}

	public void setCard(String card) {
		this.card = card;
	}

	@Override
	public String toString() {
		return "Donations [id=" + id + ", date=" + date + ", mount=" + mount + ", institution_id=" + institution_id
				+ ", user_id=" + user_id + ", card=" + card + ", institution_name=" + institution_name + "]";
	}
}
