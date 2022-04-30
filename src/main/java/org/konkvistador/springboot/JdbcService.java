package org.konkvistador.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JdbcService {

    private final JdbcRepository jdbcRepository;

    @Autowired
    public JdbcService(JdbcRepository jdbcRepository) {
        this.jdbcRepository = jdbcRepository;
    }

    public List<String> getProductName(String name) {
        return jdbcRepository.getProductName(name);
    }
}
