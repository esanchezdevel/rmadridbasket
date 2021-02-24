package es.basket.rmadrid.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import es.basket.rmadrid.dao.entity.SiteConfiguration;
import es.basket.rmadrid.dao.repository.SiteConfigurationRepository;
import es.basket.rmadrid.utils.SiteConfigurationUtils;

@Component
public class ContactModel extends BaseModel implements Models {
	
	@Autowired
	private SiteConfigurationRepository siteConfiguration;
	
	@Override
	public void execute(Model model) {
		super.execute(model);
		
		List<SiteConfiguration> configuration = siteConfiguration.findByPrefix("contact");
		
		SiteConfigurationUtils.addConfigurationToModel(configuration, model, 8);
	}
}
