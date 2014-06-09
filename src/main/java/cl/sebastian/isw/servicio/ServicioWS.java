package cl.sebastian.isw.servicio;

import cl.sebastian.isw.modelo.Acceso;
import cl.sebastian.isw.modelo.Mensaje;
import java.util.List;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@orangepeople.cl>
 */
public interface ServicioWS {

    public List<Mensaje> getMensajes();

    public List<Mensaje> getMensajes(Long rut);

    public Mensaje guardar(String mensaje, Long rut);

    public Mensaje getMensajeAleatoreo(Long rut);

    public List<Acceso> getAccesos();

    public List<Acceso> getAccesos(Long rut);
}
