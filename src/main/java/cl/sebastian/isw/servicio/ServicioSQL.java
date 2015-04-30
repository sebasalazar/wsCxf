package cl.sebastian.isw.servicio;

import cl.sebastian.isw.modelo.Pais;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
public interface ServicioSQL {

    public Pais getPaisPorIp(String ip);

}
