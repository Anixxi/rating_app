import { Component, OnInit } from '@angular/core';
import { RestaurantService } from '../services/restaurant.service';
import { Restaurant } from '../models/restaurant.model';

@Component({
  selector: 'app-restaurants',
  templateUrl: './restaurants.component.html',
  styleUrls: ['./restaurants.component.scss']
})
export class RestaurantsComponent implements OnInit {
  restaurants: Restaurant[] = [];

  constructor(private restaurantService: RestaurantService) {}

  ngOnInit(): void {
    this.getRestaurants();
  }

  getRestaurants(): void {
    this.restaurantService.findAll()
      .subscribe(restaurants => {
        this.restaurants = restaurants;
      });
  }
}
