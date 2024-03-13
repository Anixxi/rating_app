import { Component, OnInit } from '@angular/core';
import { FilmsService } from '../services/films.service';
import { Films } from '../models/films.model';

@Component({
  selector: 'app-films',
  templateUrl: './films.component.html',
  styleUrls: ["./films.component.scss"]
})
export class FilmsComponent implements OnInit {
  films: Films[] = [];

  constructor(private filmsService: FilmsService) {}

  ngOnInit(): void {
    this.getFilms();
  }

  getFilms(): void {
    this.filmsService.findAll()
      .subscribe(films => {
        this.films = films;
      });
  }
}

