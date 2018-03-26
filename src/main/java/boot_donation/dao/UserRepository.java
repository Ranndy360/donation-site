package boot_donation.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import boot_donation.model.User;

public interface UserRepository extends CrudRepository<User, Integer>{
	

	  @Query(value = "SELECT * FROM USERS WHERE EMAIL_ADDRESS = ?1", nativeQuery = true)
	  User findByEmailAddress(String emailAddress);
}
