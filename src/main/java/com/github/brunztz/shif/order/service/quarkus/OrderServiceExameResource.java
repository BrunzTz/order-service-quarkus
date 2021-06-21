package com.github.brunztz.shif.order.service.quarkus;

import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(path = "api/order-service-exame")
public interface OrderServiceExameResource extends PanacheEntityResource<OrderServiceExame, Long> {
    
}
