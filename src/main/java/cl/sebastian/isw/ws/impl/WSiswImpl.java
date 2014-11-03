package cl.sebastian.isw.ws.impl;

import cl.sebastian.isw.modelo.Acceso;
import cl.sebastian.isw.modelo.Mensaje;
import cl.sebastian.isw.servicio.ServicioWS;
import cl.sebastian.isw.utils.RutUtils;
import cl.sebastian.isw.utils.SecurityUtils;
import cl.sebastian.isw.utils.WSUtils;
import cl.sebastian.isw.vo.EstadoSalida;
import cl.sebastian.isw.ws.WSisw;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.xml.ws.Holder;
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
    public List<Acceso> getAccesos(Holder<EstadoSalida> estadoSalida) {
        List<Acceso> accesos = new ArrayList<Acceso>();
        EstadoSalida salida = WSUtils.errorGenerico;
        try {
            accesos = servicioWS.getAccesos();
            if (accesos.isEmpty()) {
                salida = WSUtils.sinDatos;
            } else {
                salida = WSUtils.ok;
            }
        } catch (Exception e) {
            String descripcion = String.format("Error al obtener accesos: %s", e.toString());
            salida = new EstadoSalida(descripcion);
            logger.error(descripcion);
            logger.debug("Error al obtener accesos: ", e);

        }
        estadoSalida.value = salida;
        return accesos;
    }

    @Override
    public List<Acceso> getAccesosPorRut(String rut, Holder<EstadoSalida> estadoSalida) {
        List<Acceso> accesos = new ArrayList<Acceso>();
        EstadoSalida salida = WSUtils.errorGenerico;
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                salida = WSUtils.rutErroneo;
            } else {
                accesos = servicioWS.getAccesos(rutNum);
                if (accesos.isEmpty()) {
                    salida = WSUtils.sinDatos;
                } else {
                    salida = WSUtils.ok;
                }
            }
        } catch (Exception e) {
            String descripcion = String.format("Error al obtener accesos: %s", e.toString());
            salida = new EstadoSalida(descripcion);
            logger.error(descripcion);
            logger.debug("Error al obtener accesos: ", e);
        }
        estadoSalida.value = salida;
        return accesos;
    }

    @Override
    public List<Mensaje> getMensajesPorRut(String rut, Holder<EstadoSalida> estadoSalida) {
        List<Mensaje> mensajes = new ArrayList<Mensaje>();
        EstadoSalida salida = WSUtils.errorGenerico;
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                salida = WSUtils.rutErroneo;
            } else {
                mensajes = servicioWS.getMensajes(rutNum);
                if (mensajes.isEmpty()) {
                    salida = WSUtils.sinDatos;
                } else {
                    salida = WSUtils.ok;
                }
            }
        } catch (Exception e) {
            String descripcion = String.format("Error al obtener accesos: %s", e.toString());
            salida = new EstadoSalida(descripcion);
            logger.error(descripcion);
            logger.debug("Error al obtener mensajes: ", e);
        }
        estadoSalida.value = salida;
        return mensajes;
    }

    @Override
    public Mensaje getMensajePorRut(String rut, Holder<EstadoSalida> estadoSalida) {
        Mensaje msj = null;
        EstadoSalida salida = WSUtils.errorGenerico;
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                salida = WSUtils.rutErroneo;
            } else {
                msj = servicioWS.getMensajeAleatoreo(rutNum);
                if (msj == null) {
                    salida = WSUtils.sinDatos;
                } else {
                    salida = WSUtils.ok;
                }
            }
        } catch (Exception e) {
            String descripcion = String.format("Error al obtener mensaje: %s", e.toString());
            salida = new EstadoSalida(descripcion);
            logger.error(descripcion);
            logger.debug("Error al obtener mensaje: ", e);
        }
        estadoSalida.value = salida;
        return msj;
    }

    @Override
    public Mensaje guardarMensaje(String mensaje, String rut, Holder<EstadoSalida> estadoSalida) {
        Mensaje msj = null;
        EstadoSalida salida = WSUtils.errorGenerico;
        try {
            Long rutNum = RutUtils.parseRut(rut);
            if (rutNum == null) {
                salida = WSUtils.rutErroneo;
            } else {
                msj = servicioWS.guardar(mensaje, rutNum);
                if (msj == null) {
                    salida = WSUtils.errorPersistencia;
                } else {
                    salida = WSUtils.ok;
                }
            }
        } catch (Exception e) {
            String descripcion = String.format("Error al guardar mensaje: %s", e.toString());
            salida = new EstadoSalida(descripcion);
            logger.error(descripcion);
            logger.debug("Error al guardar mensaje: ", e);
        }
        estadoSalida.value = salida;
        return msj;
    }
}
