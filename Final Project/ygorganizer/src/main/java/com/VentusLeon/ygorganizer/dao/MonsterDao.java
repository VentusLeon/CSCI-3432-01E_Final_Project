package com.VentusLeon.ygorganizer.dao;

import com.VentusLeon.ygorganizer.model.Monster;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MonsterDao extends JpaRepository<Monster, String> {
}
