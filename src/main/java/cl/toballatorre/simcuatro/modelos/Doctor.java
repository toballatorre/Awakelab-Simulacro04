package cl.toballatorre.simcuatro.modelos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="DOCTORES")
public class Doctor {

	// CAMPOS
	@Id
	@Column(name="IDDOCTOR")
	private int id;
	private String rutDoctor;
	private String nombre;
	private String apellido;
	
	// Relacionamiento con la entidad especialidad
	@JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "IDESPECIALIDAD")
	private Especialidad especialidad;
	
	// CONSTRUCTORES
	public Doctor() {
		
	}

	public Doctor(int id, String rutDoctor, String nombre, String apellido, Especialidad especialidad) {
		this.id = id;
		this.rutDoctor = rutDoctor;
		this.nombre = nombre;
		this.apellido = apellido;
		this.especialidad = especialidad;
	}

	// GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRutDoctor() {
		return rutDoctor;
	}

	public void setRutDoctor(String rutDoctor) {
		this.rutDoctor = rutDoctor;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Especialidad getEspecialidad() {
		return especialidad;
	}

	public void setEspecialidad(Especialidad especialidad) {
		this.especialidad = especialidad;
	}
	
}
