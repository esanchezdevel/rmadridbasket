package es.basket.rmadrid.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import es.basket.rmadrid.dao.repository.GamesRepository;

@Component
public class ResultsModel extends BaseModel implements Models {

	@Autowired
	private GamesRepository gamesRepository;
	
	@Override
	public void execute(Model model) {
		super.execute(model);
		model.addAttribute("games", gamesRepository.findAllGamesPlayed());
	}

}
