package cl.sebastian.isw.vo;

import java.io.Serializable;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
public class EstadoSalida implements Serializable {

    private Integer codigo = null;
    private String descripcion = null;

    public EstadoSalida() {
        this.codigo = null;
        this.descripcion = null;
    }
    
    public EstadoSalida(String descripcion) {
        this.codigo = -88;
        this.descripcion = descripcion;
    }

    public EstadoSalida(Integer codigo, String descripcion) {
        this.codigo = codigo;
        this.descripcion = descripcion;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
