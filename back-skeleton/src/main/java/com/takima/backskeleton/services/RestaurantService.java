package com.takima.backskeleton.services;

import com.takima.backskeleton.DAO.RestaurantDao;
import com.takima.backskeleton.models.Restaurant;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class RestaurantService {
    private final RestaurantDao restaurantDao;

    public List<Restaurant> findAll() {
        return restaurantDao.findAll();
    }
}

