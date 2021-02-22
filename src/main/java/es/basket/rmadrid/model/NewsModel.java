package es.basket.rmadrid.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import es.basket.rmadrid.common.CommonParameters;
import es.basket.rmadrid.dao.entity.News;
import es.basket.rmadrid.dao.repository.NewsRepository;

@Component
public class NewsModel implements Models {

	@Autowired
	private CommonParameters commonParameters;
	
	@Autowired
	private NewsRepository news;
	
	public void execute(Model model) {
		
		commonParameters.get(model);
		
		News n = news.findById((Long)model.getAttribute("id")).get();
		
		model.addAttribute("news", n);
	}
}
