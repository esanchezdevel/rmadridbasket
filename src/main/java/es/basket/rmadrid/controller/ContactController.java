package es.basket.rmadrid.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import es.basket.rmadrid.model.ContactModel;

@Controller
public class ContactController {

	@Autowired
	private ContactModel contactModel;
	
	@GetMapping("/Contacta")
	public String contact(Model model) {
		
		contactModel.execute(model);
		
		return "contact";
	}
}
