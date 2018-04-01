package boot_donation.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.RequestParam;

import boot_donation.model.Country;

public interface CountriesRepository extends CrudRepository<Country, Integer>{
//	 List<Article> findByTitle(String title);
//	    List<Article> findDistinctByCategory(String category);
//	    List<Article> findByTitleAndCategory(String title, String category);
//
//	    @Query("SELECT a FROM Article a WHERE a.title=:title and a.category=:category")
//	    List<Article> fetchArticles(@Param("title") String title, @Param("category") String category);
}
