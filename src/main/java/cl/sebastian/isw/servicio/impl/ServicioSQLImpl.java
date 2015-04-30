package cl.sebastian.isw.servicio.impl;

import cl.sebastian.isw.modelo.Pais;
import cl.sebastian.isw.repository.PaisRepository;
import cl.sebastian.isw.servicio.ServicioSQL;
import java.io.Serializable;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@Service("servicioSQL")
public class ServicioSQLImpl implements ServicioSQL, Serializable {

    @PersistenceContext
    private EntityManager entityManager;
    @Resource(name = "paisRepository")
    private PaisRepository paisRepository;
    private static final Logger logger = LoggerFactory.getLogger(ServicioSQLImpl.class);

    @Override
    public Pais getPaisPorIp(String ip) {
        Pais pais = null;
        try {
            if (StringUtils.isNotBlank(ip)) {
                String sql = String.format("SELECT pais_fk FROM geo_ips WHERE inet '%s' << red", ip);
                Query query = entityManager.createNamedQuery(sql);
                Integer paisId = (Integer) query.getSingleResult();
                if (paisId != null) {
                    pais = paisRepository.findOne(paisId);
                }
            }
        } catch (Exception e) {
            pais = null;
            logger.error("Error al obtener país: {}", e.toString());
            logger.debug("Error al obtener país: {}", e.toString(), e);
        }
        return pais;
    }

}
