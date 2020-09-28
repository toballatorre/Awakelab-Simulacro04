package cl.toballatorre.simcuatro.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;

import cl.toballatorre.simcuatro.modelos.Paciente;

public interface PacienteRepository extends JpaRepository<Paciente, Integer>{

}
