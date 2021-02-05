package es.basket.rmadrid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import es.basket.rmadrid.model.IndexModel;

@Controller
public class IndexController {

	@Autowired
	private IndexModel indexModel;

	@GetMapping("/")
	public String index(Model model) {

		indexModel.execute(model);

		return "index";
	}
}
