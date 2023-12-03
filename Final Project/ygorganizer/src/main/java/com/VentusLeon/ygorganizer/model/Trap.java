package com.VentusLeon.ygorganizer.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="trap")
public class Trap {

    @Id
    private String cardName;
    private String trapType;
    private boolean isOwned;
}
