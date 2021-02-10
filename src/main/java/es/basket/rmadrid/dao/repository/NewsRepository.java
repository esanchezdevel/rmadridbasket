package es.basket.rmadrid.dao.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import es.basket.rmadrid.dao.entity.News;

@Repository
public interface NewsRepository extends JpaRepository<News, Long> {

	@Query(value="SELECT id, title, CONCAT(SUBSTRING(content, 1, 200),'....') AS content, link, source, created, updated FROM news ORDER BY id DESC LIMIT ?1", nativeQuery = true)
	List<News> findLastNews(int limit);
}
