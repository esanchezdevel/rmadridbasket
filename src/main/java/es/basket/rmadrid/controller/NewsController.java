package es.basket.rmadrid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import es.basket.rmadrid.model.NewsModel;

@Controller
public class NewsController {

	@Autowired
	private NewsModel newsModel;
	
	@GetMapping("/News/{id}")
	public String index(@PathVariable("id") long id, Model model) {

		model.addAttribute("id", id);
		newsModel.execute(model);
		
		return "news";
	}
}
