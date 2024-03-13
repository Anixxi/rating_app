package com.takima.backskeleton.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "lieux")
@NoArgsConstructor
@Getter
public class Lieux {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nom;
    private String adresse;
    private String ville;
    private String pays;
    private String notes;
    private String description;
    private String image;

    // Getters and setters
}

