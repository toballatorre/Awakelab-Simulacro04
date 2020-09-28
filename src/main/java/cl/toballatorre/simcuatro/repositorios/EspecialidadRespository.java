package cl.toballatorre.simcuatro.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.toballatorre.simcuatro.modelos.Especialidad;

@Repository
public interface EspecialidadRespository extends JpaRepository<Especialidad, Integer>{

}
