package cl.sebastian.isw.modelo;

import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Sebastián Salazar Molina <ssalazar@experti.cl>
 */
@XmlRootElement
@Entity
@Table(name = "paises")
public class Pais extends BaseBean {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pk")
    private Integer id = null;
    @Column(name = "cod_num")
    private Integer codNum = null;
    @Column(name = "alfa_tres")
    private String alfaTres = null;
    @Column(name = "alfa_dos")
    private String alfaDos = null;
    @Column(name = "nombre")
    private String nombre = null;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCodNum() {
        return codNum;
    }

    public void setCodNum(Integer codNum) {
        this.codNum = codNum;
    }

    public String getAlfaTres() {
        return alfaTres;
    }

    public void setAlfaTres(String alfaTres) {
        this.alfaTres = alfaTres;
    }

    public String getAlfaDos() {
        return alfaDos;
    }

    public void setAlfaDos(String alfaDos) {
        this.alfaDos = alfaDos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 19 * hash + Objects.hashCode(this.id);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Pais other = (Pais) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
}
