package cl.toballatorre.simcuatro.modelos;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Future;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="AGENDAS")
public class Agenda {

	// CAMPOS
	@Id
	@Column(name="IDAGENDA")
	private int id;
	
	@Future
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private LocalDate fecha;
	
	@DateTimeFormat(pattern = "HH:mm")
	private LocalTime horaDesde;
	private int duracion;
	
	// Relación con la entidad Paciente
	@ManyToOne(fetch = FetchType.EAGER, optional = false)
	@JoinColumn(name = "IDPACIENTE", nullable = false)
	private Paciente paciente;
	
	// Relacion con la entidad Doctor
	@ManyToOne(fetch = FetchType.EAGER, optional = false)
	@JoinColumn(name = "IDDOCTOR", nullable = false)
	private Doctor doctor;
	
	// CNSTRUCTORES
	public Agenda() {
		
	}

	public Agenda(int id, LocalDate fecha, LocalTime horaDesde, int duracion, Paciente paciente, Doctor doctor) {
		this.id = id;
		this.fecha = fecha;
		this.horaDesde = horaDesde;
		this.duracion = duracion;
		this.paciente = paciente;
		this.doctor = doctor;
	}

	// GETTERS N SETTERS

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}

	public LocalTime getHoraDesde() {
		return horaDesde;
	}

	public void setHoraDesde(LocalTime horaDesde) {
		this.horaDesde = horaDesde;
	}

	public int getDuracion() {
		return duracion;
	}

	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	public Paciente getPaciente() {
		return paciente;
	}

	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
}
