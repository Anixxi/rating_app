package com.takima.backskeleton.models;

import lombok.Getter;
import lombok.NoArgsConstructor;

import jakarta.persistence.*;

@Entity
@Table(name = "films")
@NoArgsConstructor
@Getter
public class Films {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titre;
    private String realisateur;
    private String genre;
    private String annee;
    private String duree;
    private String notes;
    private String description;
    private String image;

    // Getters and setters
}

