package cl.sebastian.isw.utils;

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
public abstract class WSUtils implements Serializable  {
    private static final Logger logger = LoggerFactory.getLogger(WSUtils.class);

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
