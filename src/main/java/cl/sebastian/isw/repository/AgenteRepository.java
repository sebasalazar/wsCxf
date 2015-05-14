package cl.sebastian.isw.repository;

import cl.sebastian.isw.modelo.Agente;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@Resource(name = "agenteRepository")
public interface AgenteRepository extends JpaRepository<Agente, Long> {

    public Agente findByValorIgnoreCase(String valor);
}
