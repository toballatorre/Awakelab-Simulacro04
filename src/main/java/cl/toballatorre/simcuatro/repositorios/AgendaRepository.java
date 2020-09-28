package cl.toballatorre.simcuatro.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.toballatorre.simcuatro.modelos.Agenda;

@Repository
public interface AgendaRepository extends JpaRepository<Agenda, Integer>{

}
