package es.basket.rmadrid.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import es.basket.rmadrid.dao.entity.SiteConfiguration;
import es.basket.rmadrid.dao.repository.GamesRepository;
import es.basket.rmadrid.dao.repository.MenusRepository;
import es.basket.rmadrid.dao.repository.NewsRepository;
import es.basket.rmadrid.dao.repository.SiteConfigurationRepository;

@Component
public class IndexModel {

	@Autowired
	private SiteConfigurationRepository siteConfiguration;
	
	@Autowired
	private MenusRepository menus;
	
	@Autowired
	private NewsRepository news;
	
	@Autowired
	private GamesRepository games;

	public void execute(Model model) {

		List<SiteConfiguration> configuration = siteConfiguration.findByPrefix("site");

		for (SiteConfiguration conf : configuration) {
			model.addAttribute(conf.getName().substring(5), conf.getValue());
		}
		
		model.addAttribute("menu", menus.findMenu("site-menu"));
		
		model.addAttribute("news", news.findLastNews(3));
		
		model.addAttribute("lastGame", games.findLastGamePlayed());
		
		model.addAttribute("nextGames", games.findNextGames());
	}
}
