package com.github.brunztz.shif.order.service.quarkus;

import javax.persistence.Entity;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class Medico extends PanacheEntity {
    
    public String nome;

    public String especialidade;
}
