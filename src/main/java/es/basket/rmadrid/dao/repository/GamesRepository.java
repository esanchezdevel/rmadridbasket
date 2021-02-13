package es.basket.rmadrid.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import es.basket.rmadrid.dao.entity.Games;

@Repository
public interface GamesRepository extends JpaRepository<Games, Long>{

	@Query(value = "SELECT * FROM games WHERE played = true ORDER BY date DESC LIMIT 1", nativeQuery=true)
	Games findLastGamePlayed();
}
