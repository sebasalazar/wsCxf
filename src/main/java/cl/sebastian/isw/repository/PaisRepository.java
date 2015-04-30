package cl.sebastian.isw.repository;

import cl.sebastian.isw.modelo.Pais;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
public interface PaisRepository extends JpaRepository<Pais, Integer> {
}
