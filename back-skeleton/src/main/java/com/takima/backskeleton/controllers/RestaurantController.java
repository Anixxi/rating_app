package com.takima.backskeleton.controllers;

import com.takima.backskeleton.models.Restaurant;
import com.takima.backskeleton.services.RestaurantService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RequestMapping("restaurant")
@RestController
@RequiredArgsConstructor
public class RestaurantController {
    private final RestaurantService restaurantService;

    @GetMapping("")
    public List<Restaurant> getAllRestaurant() {
        return restaurantService.findAll();
    }
}
