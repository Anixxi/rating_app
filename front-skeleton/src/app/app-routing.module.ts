import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { HomeComponent } from "./home/home.component"; // Assurez-vous d'importer correctement le composant Home
import { RestaurantsComponent } from "./restaurant/restaurants.component"; // Assurez-vous d'importer correctement le composant Restaurants
import { LieuxComponent } from "./lieux/lieux.component";
import { FilmsComponent } from "./films/films.component";

const routes: Routes = [
  { path: "", component: HomeComponent },
  { path: "restaurant", component: RestaurantsComponent },
  { path: "lieux", component: LieuxComponent },
  { path: "films", component: FilmsComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
