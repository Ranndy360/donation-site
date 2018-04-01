package boot_donation.dao;

import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import boot_donation.model.Donations;
import boot_donation.model.User;

public interface DonationsRepository extends CrudRepository<Donations, Integer>{

	  @Query(value = "SELECT * FROM DONATIONS WHERE USER_ID = ?1", nativeQuery = true)
	  List<Donations> myDonations(String user_id);
}
