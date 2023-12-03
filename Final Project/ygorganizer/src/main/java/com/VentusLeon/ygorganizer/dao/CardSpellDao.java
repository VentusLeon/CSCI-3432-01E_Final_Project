package com.VentusLeon.ygorganizer.dao;

import com.VentusLeon.ygorganizer.model.CardSpell;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CardSpellDao extends JpaRepository<CardSpell, String> {
    @Query(value="SELECT joint_id, set_id, prefix, card.card_name, spell_type FROM card JOIN spell ON card.card_name = spell.card_name ORDER BY set_id", nativeQuery=true)
    List<CardSpell> getJoinedData();
}
