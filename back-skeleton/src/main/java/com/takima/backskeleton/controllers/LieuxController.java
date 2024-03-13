package com.takima.backskeleton.controllers;

import com.takima.backskeleton.models.Lieux;
import com.takima.backskeleton.services.LieuxService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RequestMapping("lieux")
@RestController
@RequiredArgsConstructor
public class LieuxController {
    private final LieuxService lieuxService;

    @GetMapping("")
    public List<Lieux> getAllLieux() {
        return lieuxService.findAll();
    }
}
