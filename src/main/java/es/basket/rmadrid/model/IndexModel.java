package es.basket.rmadrid.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import es.basket.rmadrid.common.CommonParameters;
import es.basket.rmadrid.dao.repository.GamesRepository;
import es.basket.rmadrid.dao.repository.NewsRepository;

@Component
public class IndexModel implements Models {

	@Autowired
	private CommonParameters commonParameters;
	
	@Autowired
	private NewsRepository news;
	
	@Autowired
	private GamesRepository games;

	public void execute(Model model) {

		commonParameters.get(model);
		
		model.addAttribute("news", news.findLastNews(3));
		
		model.addAttribute("lastGame", games.findLastGamePlayed());
		
		model.addAttribute("nextGames", games.findNextGames());
	}
}
