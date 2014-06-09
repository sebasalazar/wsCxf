package cl.sebastian.isw.repository;

import cl.sebastian.isw.modelo.Acceso;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@Resource(name = "accesoRepository")
public interface AccesoRepository extends JpaRepository<Acceso, Long> {

    List<Acceso> findByRut(Long rut);
}
