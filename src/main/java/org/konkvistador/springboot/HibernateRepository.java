package org.konkvistador.springboot;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
public class HibernateRepository {

    @PersistenceContext
    public EntityManager entityManager;

    public List<String> getProductName(String name) {
        Query query = entityManager.createQuery("select o.productName from orders o " +
                "join customers c on o.customer=c.id" +
                "where ucase(c.name) = ucase(c.name)");
        query.setParameter("n", name);
        return query.getResultList();
    }
}
