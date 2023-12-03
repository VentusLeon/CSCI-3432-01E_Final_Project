package com.VentusLeon.ygorganizer.controller;

import com.VentusLeon.ygorganizer.form.CardInputForm;
import com.VentusLeon.ygorganizer.form.UserInputForm;
import com.VentusLeon.ygorganizer.model.CardSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

@Controller
public class InputController {

    @Autowired
    CardSetController cardSetController;

    @GetMapping("/editSet")
    public String showInputForm(){
        return "editSets";
    }

    @GetMapping("/setInput")
    public String showInputForm(Model model) {
        model.addAttribute("userInputForm", new UserInputForm());
        return "inputForm";
    }


    @PostMapping("/setInput")
    public String processInput(@ModelAttribute UserInputForm userInputForm, Model model){


       String prefix = userInputForm.getPrefix();
       int setSize = userInputForm.getSetSize();
       String setName = userInputForm.getSetName();

       CardSet newCardSet = new CardSet();
       newCardSet.setPrefix(prefix);
       newCardSet.setSetSize(setSize);
       newCardSet.setSetName(setName);

       cardSetController.createSet(newCardSet);

        return "result";
   }

    @GetMapping("/deleteSet")
    public String showDeleteSetForm(Model model){
        model.addAttribute("userInputForm", new UserInputForm());
        return "deleteSetPage";
    }

    @PostMapping("/deleteSet")
    public String processDeleteSet(@ModelAttribute UserInputForm userInputForm, Model model){

        String prefix = userInputForm.getPrefix();
        int setSize = userInputForm.getSetSize();
        String setName = userInputForm.getSetName();

        CardSet newCardSet = new CardSet();
        newCardSet.setPrefix(prefix);
        newCardSet.setSetSize(setSize);
        newCardSet.setSetName(setName);

        cardSetController.deleteCardSet(newCardSet);
        return "deleteSetResult";
    }
}
