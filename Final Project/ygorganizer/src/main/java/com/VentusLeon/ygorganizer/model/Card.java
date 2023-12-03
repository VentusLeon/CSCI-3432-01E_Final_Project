package com.VentusLeon.ygorganizer.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="card")
public class Card {

    @Id
    private String jointId;
    private int setId;
    private String prefix;
    private String cardType;
    private String cardAttribute;
    private String cardName;
    private int cardLevel;
    private int cardAtk;
    private int cardDef;
    private boolean isOwned;

}
