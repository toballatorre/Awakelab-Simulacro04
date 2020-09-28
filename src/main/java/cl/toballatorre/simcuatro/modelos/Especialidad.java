package cl.toballatorre.simcuatro.modelos;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ESPECIALIDADES")
public class Especialidad {

	// CAMPOS
	@Id
	@Column(name="IDESPECIALIDAD")
	private int id;
	private String descripcion;
	// Relacionamiento con la entidad Doctor
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "especialidad")
	private List<Doctor> listaDoctores;
	
	// CONSTRUCTORES
	public Especialidad() {
		
	}
	
	public Especialidad(int id, String descripcion, List<Doctor> listaDoctores) {
		this.id = id;
		this.descripcion = descripcion;
		this.listaDoctores = listaDoctores;
	}

	// GETTERS N SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public List<Doctor> getListaDoctores() {
		return listaDoctores;
	}

	public void setListaDoctores(List<Doctor> listaDoctores) {
		this.listaDoctores = listaDoctores;
	}
		
}
