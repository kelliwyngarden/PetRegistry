package edu.dmacc.spring.petRegistry;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class OwnerDao {

	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("PetRegistry");
	
	public void insertOwner(Owner ownerToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(ownerToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Owner> getAllOwners() {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select o from Owner o";
		TypedQuery<Owner> typedQuery = em.createQuery(q, Owner.class);
		List<Owner> allOwners = typedQuery.getResultList();
		return allOwners;
	}
	
	
}
