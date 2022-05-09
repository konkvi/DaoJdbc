package org.konkvistador.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HibernateService {

    private final HibernateRepository jdbcRepository;

    @Autowired
    public HibernateService(HibernateRepository jdbcRepository) {
        this.jdbcRepository = jdbcRepository;
    }

    public List<String> getProductName(String name) {
        return jdbcRepository.getProductName(name);
    }
}
