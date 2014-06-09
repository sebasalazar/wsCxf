package cl.sebastian.isw.repository;

import cl.sebastian.isw.modelo.Mensaje;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Sebastián Salazar Molina <sebasalazar@gmail.com>
 */
@Resource(name = "mensajeRepository")
public interface MensajeRepository extends JpaRepository<Mensaje, Long> {

    List<Mensaje> findByRut(Long rut);
}
