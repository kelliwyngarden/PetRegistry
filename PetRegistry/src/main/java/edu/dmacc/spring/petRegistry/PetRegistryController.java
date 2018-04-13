package edu.dmacc.spring.petRegistry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetRegistryController {
	
	@Autowired PetDao petDao;
	@Autowired OwnerDao ownerDao;
	
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
	
	@RequestMapping(value = "/viewAllPets")
	public ModelAndView viewAllPets() {
		ModelAndView modelAndView = new ModelAndView();
		List<Pet> allPets = petDao.getAllPets();
		modelAndView.setViewName("viewAllPets");
		modelAndView.addObject("allPets", allPets);
		return modelAndView;
	}
	
	@RequestMapping(value = "/editPet")
	public ModelAndView editPet(int petId) {
		ModelAndView modelAndView = new ModelAndView();
		Pet pet = petDao.getPet(petId);
		modelAndView.setViewName("editPetForm");
		modelAndView.addObject("p", pet);
		return modelAndView;
	}
	
	@RequestMapping(value = "/editPetResult")
	public ModelAndView editPetResult(Pet pet) {
		ModelAndView modelAndView = new ModelAndView();
		petDao.updatePet(pet);
		List<Owner> allOwners = ownerDao.getAllOwners();
		modelAndView.setViewName("editPetResult");
		modelAndView.addObject("p", pet);
		modelAndView.addObject("allOwners", allOwners);
		return modelAndView;
	}
	
	@RequestMapping(value = "/deletePet")
	public ModelAndView deletePet(int petId) {
		ModelAndView modelAndView = new ModelAndView();
		petDao.removePet(petId);
		List<Pet> allPets = petDao.getAllPets();
		modelAndView.setViewName("viewAllPets");
		modelAndView.addObject("allPets", allPets);
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
