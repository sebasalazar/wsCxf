package cl.sebastian.isw.utils;

import cl.sebastian.isw.vo.EstadoSalida;
import java.io.Serializable;
import javax.servlet.http.HttpServletRequest;
import org.apache.cxf.message.Message;
import org.apache.cxf.phase.PhaseInterceptorChain;
import org.apache.cxf.transport.http.AbstractHTTPDestination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author Sebastián Salazar Molina <sebasalazar@gmail.com>
 */
public class WSUtils implements Serializable {

    private static final Logger logger = LoggerFactory.getLogger(WSUtils.class);
    // Estados finales
    public static final EstadoSalida ok = new EstadoSalida(1, "Salida correcta");
    public static final EstadoSalida rutErroneo = new EstadoSalida(-1, "Rut inválido");
    public static final EstadoSalida errorPersistencia = new EstadoSalida(-2, "No se pudo guardar su petición");
    public static final EstadoSalida sinDatos = new EstadoSalida(-3, "No existen datos");
    public static final EstadoSalida errorCifrado = new EstadoSalida(-4, "Error al cifrar datos");
    public static final EstadoSalida errorDescifrado = new EstadoSalida(-5, "Error al descifrar datos");
    public static final EstadoSalida errorGenerico = new EstadoSalida(-99, "Error no manejado");

    private WSUtils() {
        throw new AssertionError();
    }

    public static String getIp() {
        String ip = "0.0.0.0";
        try {
            Message message = PhaseInterceptorChain.getCurrentMessage();
            if (message != null) {
                HttpServletRequest request = (HttpServletRequest) message.get(AbstractHTTPDestination.HTTP_REQUEST);
                if (request != null) {
                    ip = request.getRemoteAddr();
                } else {
                    logger.error("Request NULO");
                }
            } else {
                logger.error("message NULO");
            }
        } catch (Exception e) {
            ip = "0.0.0.0";
            logger.error("Error al obtener Ip: {}", e.toString());
            logger.debug("Error al obtener Ip", e);
        }

        return ip;
    }
}
