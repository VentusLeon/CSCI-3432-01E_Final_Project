package com.VentusLeon.ygorganizer.service;

import com.VentusLeon.ygorganizer.dao.*;
import com.VentusLeon.ygorganizer.form.CardJointIdForm;
import com.VentusLeon.ygorganizer.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

@Service
public class CardService {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    CardDao cardDao;

    @Autowired
    SpellDao spellDao;

    @Autowired
    TrapDao trapDao;

    @Autowired
    MonsterDao monsterDao;

    @Autowired
    CardSpellDao cardSpellDao;

    @Autowired
    CardTrapDao cardTrapDao;

    public String getAllCards(Model model) {
        try{
            List<Card> cards = cardDao.getAllCards();
            model.addAttribute("cards", cards);
            return "allCards";
        }catch(Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    public String displayBLMR(Model model) {
        try{
            List<Card> cards = cardDao.getBLMR();
            int amountOwned = cardDao.amountOwnedBLMR();
            model.addAttribute("cards", cards);
            model.addAttribute("amountOwned", amountOwned);
            return "blmrCardList";
        }catch(Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    public String displayBLCR(Model model) {
        try {
            List<Card> cards = cardDao.getBLCR();
            int amountOwned = cardDao.amountOwnedBLCR();
            model.addAttribute("cards", cards);
            model.addAttribute("amountOwned", amountOwned);
            return "blcrCardList";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }
    public String getMonsterCards(Model model) {
        try{
            List<Monster> monsters = monsterDao.findAll();
            model.addAttribute("monsters", monsters);
            return "allMonsters";
        }catch(Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    public String getSpellCards(Model model) {
        try{
            List<Spell> spells = spellDao.findAll();
            model.addAttribute("spells", spells);
            return "allSpells";
        }catch(Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    public String getTrapCards(Model model) {
        try{
            List<Trap> traps = trapDao.findAll();
            model.addAttribute("traps", traps);
            return "allTraps";
        }catch(Exception e){
            e.printStackTrace();
            return "error";
        }
    }

    public List<CardSpell> getJoinedSpellData(){
        return cardSpellDao.getJoinedData();
    }

    public List<CardTrap> getJoinedTrapData(){
        return cardTrapDao.getJoinedData();
    }


    public ResponseEntity<String> addCard(Card card) {
        cardDao.save(card);
        try{
            return new ResponseEntity<>("success", HttpStatus.CREATED);
        }catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("failure", HttpStatus.BAD_REQUEST);
        }
    }

    public boolean deleteCard(Card card){
        Optional<Card> cardOptional = cardDao.findCard(card.getJointId(), card.getCardName(), card.getCardType());
        cardDao.delete(card);

        boolean answer = false;

        if(cardOptional != null){
            answer = true;
        }
        return answer;
    }

    public void updateCard(Card card){

        Card existingCard = cardDao.findByJointId(card.getJointId());

        existingCard.setJointId(card.getJointId());
        existingCard.setPrefix(card.getPrefix());
        existingCard.setCardType(card.getCardType());
        existingCard.setCardAttribute(card.getCardAttribute());
        existingCard.setCardName(card.getCardName());
        existingCard.setCardLevel(card.getCardLevel());
        existingCard.setCardAtk(card.getCardAtk());
        existingCard.setCardDef(card.getCardDef());

        cardDao.save(existingCard);


    }



    public void addSpell(Spell spell){
        spellDao.save(spell);
    }

    public void addTrap(Trap trap){
        trapDao.save(trap);
    }

    public void addMonster(Monster monster){monsterDao.save(monster);}


    public Card findByJointId(String jointId) {
        return cardDao.findByJointId(jointId);
    }


    public Card searchCard(String prefix, int setId) {
        return cardDao.searchCard(prefix, setId);
    }

    public List<Card> findByCustomPrefix(String prefix) {
        return cardDao.findByCustomPrefix(prefix);
    }

    public int deleteCardByJointId(String jointId) {
        String sqlQuery = "DELETE FROM card WHERE joint_id = '"+jointId+"'";

        int rowsDeleted = jdbcTemplate.update(sqlQuery);
        return rowsDeleted;

    }

    public void deleteSpell(String cardName) {
        String sqlQuery = "DELETE FROM spell WHERE card_name = '"+cardName+"'";
        jdbcTemplate.execute(sqlQuery);
    }


    public void deleteTrap(String cardName) {
        String sqlQuery = "DELETE FROM trap WHERE card_name = '"+cardName+"'";
        jdbcTemplate.execute(sqlQuery);
    }

    public void deleteMonster(String cardName) {
        String sqlQuery = "DELETE FROM monster WHERE card_name = '"+cardName+"'";
        jdbcTemplate.execute(sqlQuery);
    }
}
