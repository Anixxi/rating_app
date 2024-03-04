// categorie.component.ts
import { Component, Input } from '@angular/core';

@Component({
  selector: 'catégorie',
  templateUrl: './categorie.component.html',
  styleUrls: ['./categorie.component.scss']
})
export class CategorieComponent {
  @Input() elements: any[]; // Liste des éléments spécifiques à afficher dans la catégorie
}
