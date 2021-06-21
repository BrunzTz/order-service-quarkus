package com.github.brunztz.shif.order.service.quarkus;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToOne;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class OrderServiceExame extends PanacheEntity {
    
    @OneToOne(cascade = CascadeType.ALL)
    public OrderService order_service;

    @OneToOne(cascade = CascadeType.ALL)
    public Exame exame;

    public Double preco;

}
