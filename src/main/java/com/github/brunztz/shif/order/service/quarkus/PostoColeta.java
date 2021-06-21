package com.github.brunztz.shif.order.service.quarkus;

import javax.persistence.Entity;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class PostoColeta extends PanacheEntity {
    
    public String descricao;

    public String endereco;
}
