package edu.dmacc.spring.petRegistry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetRegistryController {
	
	@RequestMapping(value = "/form")
	public ModelAndView owner() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ownerForm");
		modelAndView.addObject("owner", new Owner());
		return modelAndView;
	}
}
