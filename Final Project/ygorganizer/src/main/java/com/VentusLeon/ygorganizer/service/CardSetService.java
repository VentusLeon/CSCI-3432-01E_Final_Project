package com.VentusLeon.ygorganizer.service;

import com.VentusLeon.ygorganizer.dao.CardSetDao;
import com.VentusLeon.ygorganizer.model.CardSet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class CardSetService {

    @Autowired
    CardSetDao cardSetDao;


    public ResponseEntity<String> createSet(CardSet cardSet) {
        cardSetDao.save(cardSet);
        try{
            return new ResponseEntity<>("success", HttpStatus.CREATED);
        }catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("failure", HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity<String> deleteSet(CardSet cardSet){
        cardSetDao.delete(cardSet);
        try{
            return new ResponseEntity<>("success", HttpStatus.OK);
        }catch(Exception e){
            e.printStackTrace();
            return new ResponseEntity<>("failure", HttpStatus.BAD_REQUEST);
        }
    }
}
