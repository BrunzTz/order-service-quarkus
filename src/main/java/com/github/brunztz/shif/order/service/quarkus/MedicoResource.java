package com.github.brunztz.shif.order.service.quarkus;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(path = "api/medico")
public interface MedicoResource extends PanacheEntityResource<Medico, Long> {
    
}
