package com.VentusLeon.ygorganizer.form;

import lombok.Data;

@Data
public class CardInputForm {
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
