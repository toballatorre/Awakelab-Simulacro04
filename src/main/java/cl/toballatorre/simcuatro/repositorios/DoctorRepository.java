package cl.toballatorre.simcuatro.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cl.toballatorre.simcuatro.modelos.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer>{

}
