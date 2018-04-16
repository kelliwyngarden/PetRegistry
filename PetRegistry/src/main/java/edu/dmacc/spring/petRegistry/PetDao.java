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
	
	public void updatePet(Pet p) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		System.out.println(p.getAge());
		TypedQuery<Pet> updatePet = em.createQuery("UPDATE Pet p SET p.name = :name, p.species = :species, p.age = :age, p.coloring = :coloring, p.ownerId = :ownerId" + " WHERE p.petId = :id", Pet.class);
		updatePet.setParameter("name", p.getName());
		updatePet.setParameter("species", p.getSpecies());
		updatePet.setParameter("age", p.getAge());
		updatePet.setParameter("coloring", p.getColoring());
		updatePet.setParameter("ownerId", p.getOwnerId());
		updatePet.setParameter("id", p.getPetId());
		updatePet.executeUpdate();
		em.getTransaction().commit();
		em.close();
	}
	
}
