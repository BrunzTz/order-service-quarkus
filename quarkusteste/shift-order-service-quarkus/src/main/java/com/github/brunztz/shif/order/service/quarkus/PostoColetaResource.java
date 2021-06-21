package com.github.brunztz.shif.order.service.quarkus;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(path = "api/posto-coleta")
public interface PostoColetaResource extends PanacheEntityResource<PostoColeta, Long> {
    
}
