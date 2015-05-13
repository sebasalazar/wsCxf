package cl.sebastian.isw.servicio;

import cl.sebastian.isw.modelo.Browser;
import cl.sebastian.isw.modelo.SistemaOperativo;
import java.util.List;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
public interface ServicioBrowser {

    public SistemaOperativo getSistemaOperativo(Integer id);

    public SistemaOperativo getSistemaOperativo(String nombre, String version, Integer bits);

    public List<SistemaOperativo> getSistemasOperativos();

    public SistemaOperativo guardar(SistemaOperativo sistemaOperativo);

    public boolean eliminar(SistemaOperativo sistemaOperativo);

    public Browser getBrowser(Integer id);
    
    public Browser getBrowser(String nombre, String version, Integer bits);

    public Browser getBrowser(String userAgent);

    public List<Browser> getBrowsers();

    public Browser guardar(Browser browser);

    public boolean eliminar(Browser browser);
}
