package cl.sebastian.isw.servicio.impl;

import cl.sebastian.isw.modelo.Agente;
import cl.sebastian.isw.modelo.Browser;
import cl.sebastian.isw.modelo.SistemaOperativo;
import cl.sebastian.isw.repository.AgenteRepository;
import cl.sebastian.isw.repository.BrowserRepository;
import cl.sebastian.isw.repository.SistemaOperativoRepository;
import cl.sebastian.isw.servicio.ServicioBrowser;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@Service("servicioBrowser")
public class ServicioBrowserImpl implements ServicioBrowser, Serializable {

    @Resource(name = "agenteRepository")
    private AgenteRepository agenteRepository;
    @Resource(name = "browserRepository")
    private BrowserRepository browserRepository;
    @Resource(name = "sistemaOperativoRepository")
    private SistemaOperativoRepository sistemaOperativoRepository;
    private final static Logger logger = LoggerFactory.getLogger(ServicioBrowserImpl.class);

    @Override
    public SistemaOperativo getSistemaOperativo(Integer id) {
        SistemaOperativo sistemaOperativo = null;
        try {
            if (id != null) {
                sistemaOperativo = sistemaOperativoRepository.findOne(id);
            }
        } catch (Exception e) {
            sistemaOperativo = null;
            logger.error("Error al consultar Sistema Operativo: {}", e.toString());
            logger.debug("Error al consultar Sistema Operativo: {}", e.toString(), e);
        }
        return sistemaOperativo;
    }

    @Override
    public SistemaOperativo getSistemaOperativo(String nombre, String version, Integer bits) {
        SistemaOperativo sistemaOperativo = null;
        try {
            if (StringUtils.isNotBlank(nombre) && StringUtils.isNotBlank(version) && bits != null) {
                sistemaOperativo = sistemaOperativoRepository.findByNombreIgnoreCaseAndVersionIgnoreCaseAndBits(nombre, version, bits);
            }
        } catch (Exception e) {
            sistemaOperativo = null;
            logger.error("Error al consultar Sistema Operativo: {}", e.toString());
            logger.debug("Error al consultar Sistema Operativo: {}", e.toString(), e);
        }
        return sistemaOperativo;
    }

    @Override
    public List<SistemaOperativo> getSistemasOperativos() {
        List<SistemaOperativo> sistemasOperativos = new ArrayList<SistemaOperativo>();
        try {
            sistemasOperativos = sistemaOperativoRepository.findAll();

        } catch (Exception e) {
            sistemasOperativos = new ArrayList<SistemaOperativo>();
            logger.error("Error al consultar Sistema Operativo: {}", e.toString());
            logger.debug("Error al consultar Sistema Operativo: {}", e.toString(), e);
        }
        return sistemasOperativos;
    }

    @Override
    public SistemaOperativo guardar(SistemaOperativo sistemaOperativo) {
        SistemaOperativo nuevo = null;
        try {
            if (sistemaOperativo != null) {
                nuevo = sistemaOperativoRepository.save(sistemaOperativo);
            }
        } catch (Exception e) {
            nuevo = null;
            logger.error("Error al consultar Sistema Operativo: {}", e.toString());
            logger.debug("Error al consultar Sistema Operativo: {}", e.toString(), e);
        }
        return nuevo;
    }

    @Override
    public boolean eliminar(SistemaOperativo sistemaOperativo) {
        boolean ok = false;
        try {
            if (sistemaOperativo != null) {
                sistemaOperativoRepository.delete(sistemaOperativo);
                ok = true;
            }
        } catch (Exception e) {
            ok = false;
            logger.error("Error al consultar Sistema Operativo: {}", e.toString());
            logger.debug("Error al consultar Sistema Operativo: {}", e.toString(), e);
        }
        return ok;
    }

    @Override
    public Browser getBrowser(Integer id) {
        Browser browser = null;
        try {
            if (id != null) {
                browser = browserRepository.findOne(id);
            }
        } catch (Exception e) {
            browser = null;
            logger.error("Error al consultar Browser: {}", e.toString());
            logger.debug("Error al consultar Browser: {}", e.toString(), e);
        }
        return browser;
    }

    @Override
    public Browser getBrowser(String nombre, String version, Integer bits) {
        Browser browser = null;
        try {
            if (StringUtils.isNotBlank(nombre) && StringUtils.isNotBlank(version) && bits != null) {
                browser = browserRepository.findByNombreIgnoreCaseAndVersionIgnoreCaseAndBits(nombre, version, bits);
            }
        } catch (Exception e) {
            browser = null;
            logger.error("Error al consultar Browser: {}", e.toString());
            logger.debug("Error al consultar Browser: {}", e.toString(), e);
        }
        return browser;
    }

    @Override
    public Browser getBrowser(String userAgent) {
        Browser browser = null;
        try {
            Agente agente = agenteRepository.findByValorIgnoreCase(userAgent);
            if (agente != null) {
                browser = agente.getBrowser();
            } else {
                browser = browserRepository.findOne(1);
            }
        } catch (Exception e) {
            browser = null;
            logger.error("Error al consultar browser: {}", e.toString());
            logger.debug("Error al consultar browser: {}", e.toString(), e);
        }
        return browser;
    }

    @Override
    public List<Browser> getBrowsers() {
        List<Browser> browsers = new ArrayList<Browser>();
        try {

        } catch (Exception e) {
            browsers = new ArrayList<Browser>();
            logger.error("Error al obtener browser: {}", e.toString());
            logger.debug("Error al obtener browser: {}", e.toString(), e);
        }
        return browsers;
    }

    @Override
    public Browser guardar(Browser browser) {
        Browser nuevo = null;
        try {
            if (browser != null) {
                nuevo = browserRepository.save(browser);
            }
        } catch (Exception e) {
            nuevo = null;
            logger.error("Error al guardar Browser: {}", e.toString());
            logger.debug("Error al guardar Browser: {}", e.toString(), e);
        }
        return nuevo;
    }

    @Override
    public boolean eliminar(Browser browser) {
        boolean ok = false;
        try {
            if (browser != null) {
                browserRepository.delete(browser);
                ok = true;
            }
        } catch (Exception e) {
            ok = false;
            logger.error("Error al guardar Browser: {}", e.toString());
            logger.debug("Error al guardar Browser: {}", e.toString(), e);
        }
        return ok;
    }
}
