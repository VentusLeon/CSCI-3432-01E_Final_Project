package com.VentusLeon.ygorganizer.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="spell")
public class Spell {

    @Id
    private String cardName;
    private String spellType;
    private boolean isOwned;
}
