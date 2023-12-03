package com.VentusLeon.ygorganizer.dao;

import com.VentusLeon.ygorganizer.model.CardTrap;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CardTrapDao extends JpaRepository<CardTrap, String> {

    @Query(value="SELECT joint_id, set_id, prefix, card.card_name, trap_type FROM card JOIN trap ON card.card_name = trap.card_name ORDER BY set_id", nativeQuery=true)
    List<CardTrap> getJoinedData();
}

