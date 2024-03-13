import { Injectable } from "@angular/core"
import { Observable } from "rxjs"
import { Films } from "models/films.model"
import { HttpClient } from "@angular/common/http"

@Injectable({
  providedIn: "root",
})
export class FilmsService {
  constructor(private http: HttpClient) {}

  private filmsUrl = "http://localhost:8080/films"

  findAll(): Observable<Films[]> {
    return this.http.get<Films[]>(this.filmsUrl)
  }
}
