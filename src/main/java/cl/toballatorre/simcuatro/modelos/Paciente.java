package cl.toballatorre.simcuatro.modelos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PACIENTES")
public class Paciente {

	// CAMPOS
	@Id
	@Column(name="IDPACIENTE")
	private int id;
	private String rutPaciente;
	private String nombre;
	private String apellido;
	
	// CONSTRUCTORES
	public Paciente() {
		
	}
	
	public Paciente(int id, String rutPaciente, String nombre, String apellido) {
		this.id = id;
		this.rutPaciente = rutPaciente;
		this.nombre = nombre;
		this.apellido = apellido;
	}

	// GETTERS N SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRutPaciente() {
		return rutPaciente;
	}

	public void setRutPaciente(String rutPaciente) {
		this.rutPaciente = rutPaciente;
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
	
}
