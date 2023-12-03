package com.VentusLeon.ygorganizer.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class CardSet {

    @Id
    private String prefix;
    private int setSize;
    private String setName;
}
