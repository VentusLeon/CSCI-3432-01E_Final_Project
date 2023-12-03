package com.VentusLeon.ygorganizer.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Monster {

    @Id
    private String cardName;
    private int cardLevel;
    private int cardAtk;
    private int cardDef;
    private boolean isOwned;
}
