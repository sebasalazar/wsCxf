package cl.sebastian.isw.ws.impl;

import cl.sebastian.isw.modelo.Acceso;
import cl.sebastian.isw.modelo.Mensaje;
import cl.sebastian.isw.servicio.ServicioWS;
import cl.sebastian.isw.utils.RutUtils;
import cl.sebastian.isw.ws.WSisw;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.jws.WebService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@WebService(endpointInterface = "cl.sebastian.isw.ws.WSisw")
public class WSiswImpl implements WSisw, Serializable {

    @Resource(name = "servicioWS")
    private ServicioWS servicioWS;
    private static final Logger logger = LoggerFactory.getLogger(WSiswImpl.class);

    @Override
    public List<Acceso> getAccesos() {
        List<Acceso> accesos = new ArrayList<Acceso>();
        try {
            accesos = servicioWS.getAccesos();
            if (accesos.isEmpty()) {
                throw new RuntimeException("No existen accesos");
            }
        } catch (Exception e) {
            logger.error("Error al obtener accesos: {}", e.toString());
            logger.debug("Error al obtener accesos: ", e);
            throw new RuntimeException("Error al obtener accesos: " + e.toString());
        }
        return accesos;
    }

    @Override
    public List<Acceso> getAccesosPorRut(String rut) {
        List<Acceso> accesos = new ArrayList<Acceso>();
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                throw new RuntimeException("Rut inválido");
            } else {
                accesos = servicioWS.getAccesos();
                if (accesos.isEmpty()) {
                    throw new RuntimeException("No existen accesos");
                }
            }
        } catch (Exception e) {
            logger.error("Error al obtener accesos: {}", e.toString());
            logger.debug("Error al obtener accesos: ", e);
            throw new RuntimeException("Error al obtener accesos: " + e.toString());
        }
        return accesos;
    }

    @Override
    public List<Mensaje> getMensajesPorRut(String rut) {
        List<Mensaje> mensajes = new ArrayList<Mensaje>();
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                throw new RuntimeException("Rut inválido");
            } else {
                mensajes = servicioWS.getMensajes(rutNum);
                if (mensajes.isEmpty()) {
                    throw new RuntimeException("No existen mensajes");
                }
            }
        } catch (Exception e) {
            logger.error("Error al obtener mensajes: {}", e.toString());
            logger.debug("Error al obtener mensajes: ", e);
            throw new RuntimeException("Error al obtener mensajes: " + e.toString());
        }
        return mensajes;
    }

    @Override
    public Mensaje getMensajePorRut(String rut) {
        Mensaje msj = null;
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                throw new RuntimeException("Rut inválido");
            } else {
                msj = servicioWS.getMensajeAleatoreo(rutNum);
                if (msj == null) {
                    throw new RuntimeException("No se pudo obtener el mensaje");
                }
            }
        } catch (Exception e) {
            logger.error("Error al obtener mensaje: {}", e.toString());
            logger.debug("Error al obtener mensaje: ", e);
            throw new RuntimeException("Error al obtener mensaje: " + e.toString());
        }
        return msj;
    }

    @Override
    public Mensaje guardarMensaje(String mensaje, String rut) {
        Mensaje msj = null;
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                throw new RuntimeException("Rut inválido");
            } else {
                msj = servicioWS.guardar(mensaje, rutNum);
                if (msj == null) {
                    throw new RuntimeException("No se pudo guardar el mensaje");
                }
            }
        } catch (Exception e) {
            logger.error("Error al guardar mensaje: {}", e.toString());
            logger.debug("Error al guardar mensaje: ", e);
            throw new RuntimeException("Error al guardar mensaje: " + e.toString());
        }
        return msj;
    }
}
