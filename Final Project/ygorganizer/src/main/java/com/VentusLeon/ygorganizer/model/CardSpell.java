package com.VentusLeon.ygorganizer.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class CardSpell {
        private String jointId;
        private int setId;
        private String prefix;
        @Id
        private String cardName;
        private String spellType;
}
