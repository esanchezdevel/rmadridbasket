package es.basket.rmadrid.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import es.basket.rmadrid.jpa.repository.GamesRepository;
import es.basket.rmadrid.jpa.repository.NewsRepository;

@Component
public class IndexModel extends BaseModel implements Models {
	
	@Autowired
	private NewsRepository news;
	
	
	@Autowired
	private GamesRepository games;

	@Override
	public void execute(Model model) {
		super.execute(model);
		
		model.addAttribute("news", news.findLastNews(3));
		
		model.addAttribute("lastGame", games.findLastGamePlayed());
		
		//TODO get next games when entity model is created
		model.addAttribute("nextGames", null);
	}
}
