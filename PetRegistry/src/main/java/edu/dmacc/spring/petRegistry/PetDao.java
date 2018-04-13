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
		em.getTransaction().begin();
		Pet foundPet = em.find(Pet.class,  petId);
		em.close();
		return foundPet;
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
		TypedQuery<Pet> removePet = em.createQuery("select p from Pet p where p.petId = :selectedId", Pet.class);
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
		String q = "update Pet p set p.name = :name, p.species = :species, p.age = :age, p.coloring = :coloring " + "where p.petId = :id";
		TypedQuery<Pet> updatePet = em.createQuery(q, Pet.class);
		updatePet.setParameter("name", pet.getName());
		updatePet.setParameter("species", pet.getSpecies());
		updatePet.setParameter("age", pet.getAge());
		updatePet.setParameter("coloring", pet.getColoring());
		updatePet.setParameter("id", pet.getPetId());
		int updateCount = updatePet.executeUpdate();
		if(updateCount>0) {
			System.out.println("Pet Updated");
		}
		em.getTransaction().commit();
		em.close();
	}
}
