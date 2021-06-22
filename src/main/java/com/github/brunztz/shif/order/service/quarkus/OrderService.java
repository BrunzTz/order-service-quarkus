package com.github.brunztz.shif.order.service.quarkus;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class OrderService extends PanacheEntity {
    
    private Date date;

    @JoinColumn(name="paciente_id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne
    public Paciente paciente;

    @JoinColumn(name="convenio_id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne
    public Convenio convenio;

    @JoinColumn(name="posto_coleta_id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne
    public PostoColeta posto_coleta;

    @JoinColumn(name="medico_id", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne
    public Medico medico;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
