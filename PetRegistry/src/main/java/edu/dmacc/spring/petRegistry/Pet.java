package edu.dmacc.spring.petRegistry;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.eclipse.persistence.annotations.CascadeOnDelete;
import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "pet")
@CascadeOnDelete
public class Pet {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int petId;
	@NotBlank
	private String name;
	@NotBlank
	private String species;
	@NotBlank
	private String age;
	@NotBlank
	private String coloring;
	private int ownerId;
	
	public Pet() {
		
	}

	
	public int getPetId() {
		return petId;
	}
	public void setPetId(int petId) {
		this.petId = petId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getColoring() {
		return coloring;
	}
	public void setColoring(String coloring) {
		this.coloring = coloring;
	}
	public int getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}
	
	
}
