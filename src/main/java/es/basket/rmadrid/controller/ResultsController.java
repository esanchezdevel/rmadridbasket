package es.basket.rmadrid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import es.basket.rmadrid.model.ResultsModel;

@Controller
public class ResultsController {

	@Autowired
	private ResultsModel resultsModel;
	
	@GetMapping("/Results")
	public String results(Model model) {
		
		resultsModel.execute(model);
		
		return "results";
	}
}
