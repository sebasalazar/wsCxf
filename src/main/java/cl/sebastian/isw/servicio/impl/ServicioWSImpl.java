package cl.sebastian.isw.servicio.impl;

import cl.sebastian.isw.modelo.Acceso;
import cl.sebastian.isw.modelo.Mensaje;
import cl.sebastian.isw.repository.AccesoRepository;
import cl.sebastian.isw.repository.MensajeRepository;
import cl.sebastian.isw.servicio.ServicioWS;
import cl.sebastian.isw.utils.WSUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;
import javax.transaction.Transactional;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@orangepeople.cl>
 */
@Service("servicioWS")
public class ServicioWSImpl implements ServicioWS, Serializable {

    @Resource(name = "mensajeRepository")
    private MensajeRepository mensajeRepository;
    @Resource(name = "accesoRepository")
    private AccesoRepository accesoRepository;
    private static final Logger logger = LoggerFactory.getLogger(ServicioWSImpl.class);

    @Override
    public List<Mensaje> getMensajes() {
        List<Mensaje> mensajes = new ArrayList<Mensaje>();
        try {
            mensajes = mensajeRepository.findAll();
        } catch (Exception e) {
            mensajes = new ArrayList<Mensaje>();
            logger.error("Error al obtener mensajes: {}", e.toString());
            logger.debug("Error al obtener mensajes", e);
        }
        return mensajes;
    }

    @Override
    public List<Mensaje> getMensajes(Long rut) {
        List<Mensaje> mensajes = new ArrayList<Mensaje>();
        try {
            mensajes = mensajeRepository.findByRut(rut);
            if (!mensajes.isEmpty()) {
                Acceso acceso = new Acceso();
                acceso.setAccion("Obtener Mensajes: " + mensajes.size() + " mensaje obtenidos");
                acceso.setFecha(new Date());
                acceso.setIp(WSUtils.getIp());
                acceso.setRut(rut);
                accesoRepository.save(acceso);
            }

        } catch (Exception e) {
            mensajes = new ArrayList<Mensaje>();
            logger.error("Error al obtener mensajes: {}", e.toString());
            logger.debug("Error al obtener mensajes", e);
        }
        return mensajes;
    }

    @Override
    @Transactional
    public Mensaje guardar(String mensaje, Long rut) {
        Mensaje resultado = null;
        try {
            if (StringUtils.isNotBlank(mensaje) && rut != null) {
                Mensaje salida = new Mensaje();
                salida.setFecha(new Date());
                salida.setMensaje(mensaje);
                salida.setRut(rut);
                resultado = mensajeRepository.save(salida);
                if (resultado != null) {
                    Acceso acceso = new Acceso();
                    acceso.setAccion("Guardar Mensaje: " + mensaje);
                    acceso.setFecha(new Date());
                    acceso.setIp(WSUtils.getIp());
                    acceso.setRut(rut);
                    accesoRepository.save(acceso);
                }
            }
        } catch (Exception e) {
            resultado = null;
            logger.error("Error al guardar mensaje: {}", e.toString());
            logger.debug("Error al guardar mensaje", e);
        }
        return resultado;
    }

    @Override
    public Mensaje getMensajeAleatoreo(Long rut) {
        Mensaje mensaje = new Mensaje();
        try {
            List<Mensaje> mensajes = getMensajes(rut);
            int total = mensajes.size();
            if (total > 0) {
                int indice = RandomUtils.nextInt(0, total - 1);
                mensaje = mensajes.get(indice);
                if (mensaje != null) {
                    Acceso acceso = new Acceso();
                    acceso.setAccion("Obtener Mensaje: " + mensaje.getMensaje());
                    acceso.setFecha(new Date());
                    acceso.setIp(WSUtils.getIp());
                    acceso.setRut(rut);
                    accesoRepository.save(acceso);
                }
            }
        } catch (Exception e) {
            mensaje = new Mensaje();
            logger.error("Error al obtener mensaje aleatoreo: {}", e.toString());
            logger.debug("Error al obtener mensaje aleatoreo", e);
        }
        return mensaje;
    }

    @Override
    public List<Acceso> getAccesos() {
        List<Acceso> accesos = new ArrayList<Acceso>();
        try {
            accesos = accesoRepository.findAll();
        } catch (Exception e) {
            accesos = new ArrayList<Acceso>();
            logger.error("Error al obtener accesos: {}", e.toString());
            logger.debug("Error al obtener accesos", e);
        }
        return accesos;
    }

    @Override
    public List<Acceso> getAccesos(Long rut) {
        List<Acceso> accesos = new ArrayList<Acceso>();
        try {
            accesos = accesoRepository.findByRut(rut);
        } catch (Exception e) {
            accesos = new ArrayList<Acceso>();
            logger.error("Error al obtener accesos: {}", e.toString());
            logger.debug("Error al obtener accesos", e);
        }
        return accesos;
    }
}
