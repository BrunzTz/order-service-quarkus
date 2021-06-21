package com.github.brunztz.shif.order.service.quarkus;

import java.sql.Date;

import javax.persistence.Entity;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

@Entity
public class Paciente extends PanacheEntity {
    
    public String nome;

    public Date data_nascimento;

    public String sexo;

    public String endereco;
}
