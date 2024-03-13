package com.takima.backskeleton.DAO;

import com.takima.backskeleton.models.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RestaurantDao extends JpaRepository<Restaurant, Long> {
}
