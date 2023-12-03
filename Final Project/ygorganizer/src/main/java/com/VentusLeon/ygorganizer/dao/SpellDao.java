package com.VentusLeon.ygorganizer.dao;

import com.VentusLeon.ygorganizer.model.Card;
import com.VentusLeon.ygorganizer.model.Spell;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SpellDao extends JpaRepository<Spell, String> {

}
