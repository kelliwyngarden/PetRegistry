package edu.dmacc.spring.petRegistry;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PetRegistryController {

	@Autowired
	PetDao petDao;
	@Autowired
	OwnerDao ownerDao;

	@RequestMapping(value = "/homepage")
	public ModelAndView owner() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("homepage");
		return modelAndView;
	}

	@RequestMapping(value = "/ownerForm")
	public ModelAndView ownerForm() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("ownerForm");
		modelAndView.addObject("owner", new Owner());
		return modelAndView;
	}

	@RequestMapping(value = "/ownerResult")
	public ModelAndView processOwner(@Valid @ModelAttribute("owner") Owner owner, BindingResult bindingResult,
			Model model) {
		ModelAndView modelAndView = new ModelAndView();
		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("ownerForm");
		} else {
			ownerDao.insertOwner(owner);
			modelAndView.setViewName("ownerResult");
			modelAndView.addObject("o", owner);
		}
		return modelAndView;
	}

	@RequestMapping(value = "/viewOwners")
	public ModelAndView viewAllOwners() {
		ModelAndView modelAndView = new ModelAndView();
		List<Owner> allOwners = ownerDao.getAllOwners();
		modelAndView.setViewName("viewOwners");
		modelAndView.addObject("allOwners", allOwners);
		return modelAndView;
	}

	@RequestMapping(value = "/editOwnerForm")
	public ModelAndView ownerUpdate(HttpServletRequest request, HttpServletResponse response, int ownerId) {
		ModelAndView modelAndView = new ModelAndView();
		String act = request.getParameter("doThis");
		if (act.equals("Add Pet")) {
			Owner ownerToEdit = ownerDao.getOwner(ownerId);
			modelAndView.setViewName("petForm");
			modelAndView.addObject("owner", ownerToEdit);
			modelAndView.addObject("pet", new Pet());
		} else if (act.equals("Edit Owner Information")) {
			Owner ownerToEdit = ownerDao.getOwner(ownerId);
			request.setAttribute("ownerToEdit", ownerToEdit);
			modelAndView.setViewName("editOwnerForm");
			modelAndView.addObject("owner", ownerToEdit);
		} else if (act.equals("Delete Owner")) {
			Owner ownerToDelete = ownerDao.getOwner(ownerId);
			ownerDao.deleteOwner(ownerToDelete);
			List<Owner> allOwners = ownerDao.getAllOwners();
			modelAndView.setViewName("viewOwners");
			modelAndView.addObject("allOwners", allOwners);
		}
		return modelAndView;
	}

	@RequestMapping(value = "/editOwnerResult")
	public ModelAndView updateOwner(Owner owner) {
		ModelAndView modelAndView = new ModelAndView();
		ownerDao.updateOwner(owner);
		modelAndView.setViewName("editOwnerResult");
		modelAndView.addObject("o", owner);
		return modelAndView;
	}

	@RequestMapping(value = "/petForm")
	public ModelAndView petForm(int ownerId) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("petForm");
		Owner owner = ownerDao.getOwner(ownerId);
		modelAndView.addObject("owner", owner);
		modelAndView.addObject("pet", new Pet());
		return modelAndView;
	}

	@RequestMapping(value = "/petResult")
	public ModelAndView processPet(@Valid @ModelAttribute Pet pet, BindingResult bindingResult, Model model) {
		ModelAndView modelAndView = new ModelAndView();
		if (bindingResult.hasErrors()) {
			modelAndView.setViewName("petForm");
		} else {
			petDao.insertPet(pet);
			List<Owner> allOwners = ownerDao.getAllOwners();
			modelAndView.setViewName("petResult");
			modelAndView.addObject("p", pet);
			modelAndView.addObject("allOwners", allOwners);
		}
		return modelAndView;
	}

	@RequestMapping(value = "/viewAllPets")
	public ModelAndView viewAllPets() {
		ModelAndView modelAndView = new ModelAndView();
		List<Pet> allPets = petDao.getAllPets();
		List<Owner> allOwners = ownerDao.getAllOwners();
		modelAndView.setViewName("viewAllPets");
		modelAndView.addObject("allPets", allPets);
		modelAndView.addObject("allOwners", allOwners);
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

	@RequestMapping(value = "/petUpdate")
	public ModelAndView updatePet(HttpServletRequest request, HttpServletResponse response, int petId) {
		String act = request.getParameter("doThis");
		ModelAndView modelAndView = new ModelAndView();
		if (act.equals("Edit this Pet")) {
			Pet petToEdit = petDao.getPet(petId);
			request.setAttribute("petToEdit", petToEdit);
			modelAndView.setViewName("editPetForm");
			modelAndView.addObject("pet", petToEdit);
		} else if (act.equals("Remove this Pet")) {
			petDao.removePet(petId);
			List<Pet> allPets = petDao.getAllPets();
			modelAndView.setViewName("viewAllPets");
			modelAndView.addObject("allPets", allPets);
		}

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
