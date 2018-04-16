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
	
	public void updateOwner(Owner ownerToEdit) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.merge(ownerToEdit);
		em.getTransaction().commit();
		em.close();
	}
	
	public void deleteOwner(Owner ownerToDelete) {
		// TODO Auto-generated method stub
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		Owner find = em.find(Owner.class, ownerToDelete.getOwnerId());
		em.remove(find);
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
		em.close();
		return allOwners;
	}
	
	public Owner getOwner(int ownerId) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select o from Owner o where o.ownerId = :selectedId";
		TypedQuery<Owner> typedQuery = em.createQuery(q, Owner.class);
		typedQuery.setParameter("selectedId", ownerId);
		Owner owner = typedQuery.getSingleResult();
		em.close();
		return owner;
	}
	
	public void cleanUp() {
		emfactory.close();
	}

}
