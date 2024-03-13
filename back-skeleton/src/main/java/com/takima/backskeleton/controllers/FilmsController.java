package com.takima.backskeleton.controllers;

import com.takima.backskeleton.models.Films;
import com.takima.backskeleton.services.FilmsService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RequestMapping("films")
@RestController
@RequiredArgsConstructor
public class FilmsController {
    private final FilmsService filmsService;

    @GetMapping("")
    public List<Films> getAllFilms() {
        return filmsService.findAll();
    }
}
