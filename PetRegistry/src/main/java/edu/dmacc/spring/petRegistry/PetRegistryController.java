package edu.dmacc.spring.petRegistry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetRegistryController {
	
	@Autowired PetDao petDao();
	@Autowired OwnerDao ownerDao();
	
	@RequestMapping(value = "/homepage")
	public ModelAndView owner() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("homepage");
		return modelAndView;
	}
	
	@RequestMapping(value = "/petForm")
	public ModelAndView petForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("petForm");
		modelAndView.addObject("pet", new Pet());
		return modelAndView;
	}
	
	@RequestMapping(value = "/petResult")
	public ModelAndView processPet(Pet pet) {
		ModelAndView modelAndView = new ModelAndView();
		petDao.insertPet(pet);
		modelAndView.setViewName("petResult");
		modelAndView.addObject("p", pet);
		return modelAndView;
	}
	
	@Bean
	public PetDao petDao() {
		PetDao bean = new PetDao();
		return bean;
	}
	
	@Bean
	public OwnerDao ownerDao() {
		OwnerDao bean = new OwnerDao();
		return bean;
	}
}
