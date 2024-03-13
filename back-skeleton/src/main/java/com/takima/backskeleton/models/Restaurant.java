package com.takima.backskeleton.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;

@Entity
@Table(name = "restaurant")
@NoArgsConstructor
@Getter
public class Restaurant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;
    private String adresse; // Modifier le nom de la propriété
    private String ville;
    private String pays;
    private String image;

    // Getters and setters
}

