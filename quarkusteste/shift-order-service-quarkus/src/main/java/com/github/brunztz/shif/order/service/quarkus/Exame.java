package com.github.brunztz.shif.order.service.quarkus;

import javax.persistence.Entity;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class Exame extends PanacheEntity {
    
    public String descricao;

    public Double preco;
}
