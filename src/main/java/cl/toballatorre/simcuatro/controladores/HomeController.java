package cl.toballatorre.simcuatro.controladores;



import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.toballatorre.simcuatro.modelos.Agenda;
import cl.toballatorre.simcuatro.repositorios.AgendaRepository;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;

@Controller
@RequestMapping(path = "/")
public class HomeController {

   /** Objeto {@link Logger} que contiene los métodos de depuración */
    private static final Logger logger = LogManager.getLogger(HomeController.class);

    @Autowired
    AgendaRepository ar;
    
   // Ir a home
    @GetMapping
    public String paginaInicio(HttpServletRequest request, Model modelo) {
        // Depuración
        logger.info("Solicitud GET: {}", request.getRequestURI());

        // Mostrar página
        return "home";
    }
    
    // Ir al listado de la agenda
    @GetMapping("/listado")
    public String listado(HttpServletRequest request, Model modelo) {
    	// Depuración
        logger.info("Solicitud GET: {}", request.getRequestURI());
    	
        Optional<List<Agenda>> opListaAgendas = Optional.ofNullable(ar.findAll());
        
        if (opListaAgendas.isPresent()) {
			modelo.addAttribute("listaAgenda", opListaAgendas.get());
			logger.info("Agendas encontradas: {}", opListaAgendas.get().size());
		}
        
    	return "listado";
    }
    
    // Ir a reservar una agenda
    @GetMapping("/reserva")
    public String reserva(HttpServletRequest request, Model modelo) {
    	// Depuración
        logger.info("Solicitud GET: {}", request.getRequestURI());
    	
    	return "reserva";
    }
}
