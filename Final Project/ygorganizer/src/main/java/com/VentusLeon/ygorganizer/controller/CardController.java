package com.VentusLeon.ygorganizer.controller;

import com.VentusLeon.ygorganizer.form.CardJointIdForm;
import com.VentusLeon.ygorganizer.model.*;
import com.VentusLeon.ygorganizer.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.VentusLeon.ygorganizer.form.CustomPrefixForm;

import java.util.List;
import java.util.Optional;

import org.springframework.ui.Model;

@Controller //changed from RestController, let's see if it works
@RequestMapping("card")
public class CardController {

    @Autowired
    CardService cardService;

    @GetMapping("/categorySelection")
    public String showCategorySelection(){
        return "categorySelection";
    }

    @GetMapping("/allCards")
    public String getAllCards(Model model){

        return cardService.getAllCards(model);
    }

    @GetMapping("/monsterCards")
    public String getMonsterCards(Model model){
        return cardService.getMonsterCards(model);
    }


    @GetMapping("/edit")
    public String showEditForm(){
        return "editCards";
    }

    @PostMapping("add")
    public ResponseEntity<String> addCard(@RequestBody Card card){
        return cardService.addCard(card);
    }

    public void addSpell(Spell spell){
        cardService.addSpell(spell);
    }

    public void addTrap(Trap trap){
        cardService.addTrap(trap);
    }
    public void addMonster(Monster monster) {
        cardService.addMonster(monster);
    }

    public void deleteSpell(String cardName) {cardService.deleteSpell(cardName);}
    public void deleteTrap(String cardName) {
        cardService.deleteTrap(cardName);
    }
    public void deleteMonster(String cardName) {
        cardService.deleteMonster(cardName);
    }
    public int deleteCardByJointId(String jointId) {
        return cardService.deleteCardByJointId(jointId);
    }

    @DeleteMapping("delete")
    public boolean deleteCard(@RequestBody Card card){
        return cardService.deleteCard(card);
    }

    public void updateCard(Card card){
        cardService.updateCard(card);
    }

    @GetMapping("/spellCards")
    public String displayJoinedSpellData(Model model){
        List<CardSpell> joinedData = cardService.getJoinedSpellData();
        model.addAttribute("joinedData", joinedData);
        return "allSpells";
    }

    @GetMapping("/trapCards")
    public String displayJoinedTrapData(Model model){
        List<CardTrap> joinedData = cardService.getJoinedTrapData();
        model.addAttribute("joinedData", joinedData);
        return "allTraps";
    }

    @GetMapping("/BLMR")
    public String displayBLMR(Model model){
        return cardService.displayBLMR(model);
    }

    @GetMapping("/BLCR")
    public String displayBLCR(Model model){
        return cardService.displayBLCR(model);
    }

    @GetMapping("/inputCustomPrefix")
    public String showInputForm(Model model){
        model.addAttribute("customPrefixForm", new CustomPrefixForm());
        return "inputCustomPrefix";
    }

    @PostMapping("/inputCustomPrefix")
    public String processPrefixInput(@ModelAttribute CustomPrefixForm customPrefixForm, Model model){
        String prefix = customPrefixForm.getPrefix();
        List<Card> customSet = cardService.findByCustomPrefix(prefix);
        model.addAttribute("customSet", customSet);
        return "customSetResult";
    }




    public Card findByJointId(String jointId) {
        return cardService.findByJointId(jointId);
    }

    public Card searchCard(String prefix, int setId) {
        return cardService.searchCard(prefix, setId);
    }



}

