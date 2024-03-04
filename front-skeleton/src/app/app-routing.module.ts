import { NgModule } from "@angular/core"
import { RouterModule, Routes } from "@angular/router"
import { HomeComponent } from "home/home.component"
import { CategorieComponent } from "categorie/categorie.component" // Import du composant de catégorie

const routes: Routes = [
  { path: "", component: HomeComponent },
  { path: "catégorie", component: CategorieComponent }, // Ajout de la route pour les catégories
]

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
