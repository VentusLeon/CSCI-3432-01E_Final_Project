package com.VentusLeon.ygorganizer.dao;

import com.VentusLeon.ygorganizer.model.Trap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TrapDao extends JpaRepository<Trap, String> {

}
