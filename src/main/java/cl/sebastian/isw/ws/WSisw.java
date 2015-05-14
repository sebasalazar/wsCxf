package cl.sebastian.isw.ws;

import cl.sebastian.isw.modelo.Acceso;
import cl.sebastian.isw.modelo.Browser;
import cl.sebastian.isw.modelo.Mensaje;
import cl.sebastian.isw.modelo.Pais;
import cl.sebastian.isw.vo.EstadoSalida;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.xml.ws.Holder;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@WebService
public interface WSisw {

    public List<Acceso> consultarAccesos(@WebParam(name = "estadoSalida", mode = WebParam.Mode.OUT) Holder<EstadoSalida> estadoSalida);

    public List<Acceso> consultarAccesosPorRut(@WebParam(name = "rut") String rut, @WebParam(name = "estadoSalida", mode = WebParam.Mode.OUT) Holder<EstadoSalida> estadoSalida);

    public List<Mensaje> consultarMensajesPorRut(@WebParam(name = "rut") String rut, @WebParam(name = "estadoSalida", mode = WebParam.Mode.OUT) Holder<EstadoSalida> estadoSalida);

    public Mensaje consultarMensajePorRut(@WebParam(name = "rut") String rut, @WebParam(name = "estadoSalida", mode = WebParam.Mode.OUT) Holder<EstadoSalida> estadoSalida);

    public Mensaje guardarMensaje(@WebParam(name = "mensaje") String mensaje, @WebParam(name = "rut") String rut, @WebParam(name = "estadoSalida", mode = WebParam.Mode.OUT) Holder<EstadoSalida> estadoSalida);

    public Pais consultarPais(@WebParam(name = "ip") String ip);

    public Browser consultarBrowser(@WebParam(name = "agenteUsuario") String agenteUsuario);
}
