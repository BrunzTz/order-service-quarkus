package com.github.brunztz.shif.order.service.quarkus;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class OrderService extends PanacheEntity {
    
    public Date date;

    @OneToOne(cascade = CascadeType.ALL)
    public Paciente paciente;

    @OneToOne(cascade = CascadeType.ALL)
    public Convenio convenio;

    @OneToOne(cascade = CascadeType.ALL)
    public PostoColeta posto_coleta;

    @OneToOne(cascade = CascadeType.ALL)
    public Medico medico;
}
