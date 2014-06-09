package cl.sebastian.isw.ws;

import cl.sebastian.isw.modelo.Acceso;
import cl.sebastian.isw.modelo.Mensaje;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@WebService
public interface WSisw {

    public List<Acceso> getAccesos();

    public List<Acceso> getAccesosPorRut(@WebParam(name = "rut") String rut);

    public List<Mensaje> getMensajesPorRut(@WebParam(name = "rut") String rut);

    public Mensaje getMensajePorRut(@WebParam(name = "rut") String rut);
    
    public Mensaje guardarMensaje(@WebParam(name = "mensaje") String mensaje, @WebParam(name = "rut") String rut);
}
