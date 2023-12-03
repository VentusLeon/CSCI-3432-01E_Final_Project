package com.VentusLeon.ygorganizer.controller;

import com.VentusLeon.ygorganizer.service.CardSetService;
import com.VentusLeon.ygorganizer.model.CardSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("cardSet")
public class CardSetController {

    @Autowired
    CardSetService cardSetService;

    @PostMapping("createSet")
    public ResponseEntity<String> createSet(@RequestBody CardSet cardSet){
        return cardSetService.createSet(cardSet);
    }

    @PostMapping("deleteSet")
    public ResponseEntity<String> deleteCardSet(@RequestBody CardSet cardSet){
        return cardSetService.deleteSet(cardSet);
    }
}
