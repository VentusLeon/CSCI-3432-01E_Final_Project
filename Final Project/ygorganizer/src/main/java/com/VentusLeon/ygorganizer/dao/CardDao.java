package com.VentusLeon.ygorganizer.dao;

import com.VentusLeon.ygorganizer.form.CardJointIdForm;
import com.VentusLeon.ygorganizer.model.Card;
import com.VentusLeon.ygorganizer.model.CardSpell;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CardDao extends JpaRepository<Card, String> {



    Card findByJointId(String jointId);

    @Query(value="SELECT * FROM card WHERE prefix = 'BLMR' ORDER BY set_id", nativeQuery=true)
    List<Card> getBLMR();

    @Query(value="SELECT * FROM card ORDER BY set_id", nativeQuery=true)
    List<Card> getAllCards();

    @Query(value="SELECT * FROM card WHERE prefix = 'BLCR' ORDER BY set_id", nativeQuery = true)
    List<Card> getBLCR();

    @Query(value="SELECT COUNT(is_owned) FROM card WHERE prefix = 'BLMR' AND is_owned = true", nativeQuery = true)
    int amountOwnedBLMR();

    @Query(value="SELECT COUNT(is_owned) FROM card WHERE prefix = 'BLCR' AND is_owned = true", nativeQuery = true)
    int amountOwnedBLCR();

    @Query(value="SELECT * FROM card WHERE prefix = ? AND set_id = ?", nativeQuery = true)
    Card searchCard(String prefix, int setId);

    @Query(value="SELECT * FROM card WHERE prefix = ?", nativeQuery = true)
    List<Card> findByCustomPrefix(String prefix);


    @Query(value="SELECT * FROM card WHERE joint_id = ? AND card_name = ? AND card_type = ?", nativeQuery = true)
    Optional<Card> findCard(String jointId, String cardName, String cardType);


}
