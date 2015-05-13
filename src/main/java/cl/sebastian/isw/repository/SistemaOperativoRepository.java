package cl.sebastian.isw.repository;

import cl.sebastian.isw.modelo.SistemaOperativo;
import javax.annotation.Resource;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@Resource(name = "sistemaOperativoRepository")
public interface SistemaOperativoRepository extends JpaRepository<SistemaOperativo, Integer> {

    public SistemaOperativo findByNombreIgnoreCaseAndVersionIgnoreCaseAndBits(String nombre, String version, Integer bits);
}
