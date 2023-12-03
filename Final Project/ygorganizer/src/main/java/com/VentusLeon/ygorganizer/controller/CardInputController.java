package com.VentusLeon.ygorganizer.controller;

import com.VentusLeon.ygorganizer.form.CardInputForm;
import com.VentusLeon.ygorganizer.form.CardJointIdForm;
import com.VentusLeon.ygorganizer.model.Card;
import com.VentusLeon.ygorganizer.model.Monster;
import com.VentusLeon.ygorganizer.model.Spell;
import com.VentusLeon.ygorganizer.model.Trap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.util.Optional;

@Controller
public class CardInputController {

    @Autowired
    CardController cardController;

    @GetMapping("/addNewCard")
    public String showInputForm(Model model){
        model.addAttribute("cardInputForm", new CardInputForm());
        return "addCardPage";

    }

    @PostMapping("/addNewCard")
    public String processInput(@ModelAttribute CardInputForm cardInputForm, Model model){
        String jointId = cardInputForm.getJointId();
        int setId = cardInputForm.getSetId();
        String prefix = cardInputForm.getPrefix();
        String cardType = cardInputForm.getCardType();
        String cardAttribute = cardInputForm.getCardAttribute();
        String cardName = cardInputForm.getCardName();
        int cardLevel = cardInputForm.getCardLevel();
        int cardAtk = cardInputForm.getCardAtk();
        int cardDef = cardInputForm.getCardDef();
        boolean isOwned = cardInputForm.isOwned();

        Card newCard = new Card();
        newCard.setJointId(jointId);
        newCard.setSetId(setId);
        newCard.setPrefix(prefix);
        newCard.setCardType(cardType);
        newCard.setCardAttribute(cardAttribute);
        newCard.setCardName(cardName);
        newCard.setCardLevel(cardLevel);
        newCard.setCardAtk(cardAtk);
        newCard.setCardDef(cardDef);
        newCard.setOwned(isOwned);

        cardController.addCard(newCard);

        if(newCard.getCardType().equalsIgnoreCase("Spell")){
            Spell spell = new Spell();
            spell.setCardName(newCard.getCardName());
            spell.setSpellType("Basic");
            cardController.addSpell(spell);
        }else if(newCard.getCardType().equalsIgnoreCase("Trap")){
            Trap trap = new Trap();
            trap.setCardName(newCard.getCardName());
            trap.setTrapType("Basic");
            cardController.addTrap(trap);
        }else{
            Monster monster = new Monster();
            monster.setCardName(newCard.getCardName());
            monster.setCardLevel(newCard.getCardLevel());
            monster.setCardAtk(newCard.getCardAtk());
            monster.setCardDef(newCard.getCardDef());
            cardController.addMonster(monster);
        }

        return "addCardResult";
    }


    @GetMapping("/deleteCard")
    public String showDeleteCardForm(Model model){
        model.addAttribute("cardJointIdForm", new CardJointIdForm());
        return "deleteCardPage";
    }

    @PostMapping("/deleteCard")
    public String processDeleteCard(@ModelAttribute CardJointIdForm cardJointIdForm, Model model){

        String jointId = cardJointIdForm.getJointId();


        int rowsDeleted = cardController.deleteCardByJointId(jointId);


        String result = null;

        if(rowsDeleted != 0){
            result = "deleteCardResult";
        }
        else{
            return "deleteCardFailure";
        }




        return result;
    }

    @GetMapping("/inputJointId")
    public String inputJointId(){
        return "inputJointId";
    }

    @PostMapping("/findCard")
    public String findCard(@RequestParam("jointId") String jointId, Model model){
        Card card = cardController.findByJointId(jointId);
        model.addAttribute("card", card);
        model.addAttribute("cardInputForm", new CardInputForm());
        return "cardSelection";
    }

    @GetMapping("/searchCard")
    public String searchCard(){
        return "searchCardInput";
    }

    @PostMapping("/searchCard")
    public String searchCardByInput(@RequestParam("jointId") String jointId, Model model){
        Card card = cardController.findByJointId(jointId);
        model.addAttribute("card", card);
        return "searchCardResult";
    }

    @PostMapping("/updateCard")
    public String updateCard(@ModelAttribute CardInputForm cardInputForm, Model model){

        String jointId = cardInputForm.getJointId();
        int setId = cardInputForm.getSetId();
        String prefix = cardInputForm.getPrefix();
        String cardType = cardInputForm.getCardType();
        String cardAttribute = cardInputForm.getCardAttribute();
        String cardName = cardInputForm.getCardName();
        int cardLevel = cardInputForm.getCardLevel();
        int cardAtk = cardInputForm.getCardAtk();
        int cardDef = cardInputForm.getCardDef();
        boolean isOwned = cardInputForm.isOwned();

        Card newCard = new Card();
        newCard.setJointId(jointId);
        newCard.setSetId(setId);
        newCard.setPrefix(prefix);
        newCard.setCardType(cardType);
        newCard.setCardAttribute(cardAttribute);
        newCard.setCardName(cardName);
        newCard.setCardLevel(cardLevel);
        newCard.setCardAtk(cardAtk);
        newCard.setCardDef(cardDef);
        newCard.setOwned(isOwned);

        cardController.updateCard(newCard);
        return "updateSuccess";
    }








}
