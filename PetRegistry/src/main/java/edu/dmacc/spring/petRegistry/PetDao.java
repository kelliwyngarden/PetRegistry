package edu.dmacc.spring.petRegistry;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class PetDao {

	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("PetRegistry");
	
	public void insertPet(Pet petToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(petToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
	public Pet getPet(int petId) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().commit();
		String q = "select p from Pet p where p.petId = :selectedId";
		TypedQuery<Pet> getPet = em.createQuery(q, Pet.class);
		getPet.setParameter("selectedId", petId);
		Pet pet = getPet.getSingleResult();
		return pet;
	}
	
	public List<Pet> getAllPets() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select p from Pet p";
		TypedQuery<Pet> typedQuery = em.createQuery(q, Pet.class);
		List<Pet> all = typedQuery.getResultList();
		em.close();
		return all;
	}
	
	public void removePet(int petToRemove) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Pet> removePet = em.createQuery("select p from Pet p where p.id = :selectedId", Pet.class);
		removePet.setParameter("selectedId", petToRemove);
		removePet.setMaxResults(1);
		Pet toDelete = removePet.getSingleResult();
		em.remove(toDelete);
		System.out.println("Pet Removed");
		em.getTransaction().commit();
		em.close();
	}
	
	public void updatePet(Pet pet) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Pet> updatePet = em.createQuery("update Pet p set p.name = :selectedName, p.species = :selectedSpecies, p.age = :selectedAge, p.coloring = :selectedColor, p.owner = :selectedOwner" + "where p.id = :selectedId", Pet.class);
		updatePet.setParameter("selectedName", pet.getName());
		updatePet.setParameter("selectedSpecies", pet.getSpecies());
		updatePet.setParameter("selectedAge", pet.getAge());
		updatePet.setParameter("selectedColor", pet.getColoring());
		updatePet.setParameter("selectedOwner", pet.getOwner());
		updatePet.setParameter("selectedId", pet.getPetId());
		int updateCount = updatePet.executeUpdate();
		if(updateCount>0) {
			System.out.println("Pet Updated");
		}
		em.getTransaction().commit();
		em.close();
	}
}
