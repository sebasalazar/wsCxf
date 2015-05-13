package cl.sebastian.isw.repository;

import cl.sebastian.isw.modelo.Browser;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@Resource(name = "browserRepository")
public interface BrowserRepository extends JpaRepository<Browser, Integer> {

    public Browser findByNombreIgnoreCaseAndVersionIgnoreCaseAndBits(String nombre, String version, Integer bits);
}
