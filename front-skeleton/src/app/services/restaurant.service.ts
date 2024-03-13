import { Injectable } from "@angular/core"
import { Observable } from "rxjs"
import { Restaurant } from "models/restaurant.model"
import { HttpClient } from "@angular/common/http"

@Injectable({
  providedIn: "root",
})
export class RestaurantService {
  constructor(private http: HttpClient) {}

  private restaurantUrl = "http://localhost:8080/restaurant"

  findAll(): Observable<Restaurant[]> {
    return this.http.get<Restaurant[]>(this.restaurantUrl)
  }
}
