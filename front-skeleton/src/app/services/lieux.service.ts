import { Injectable } from "@angular/core"
import { Observable } from "rxjs"
import { Lieux } from "models/lieux.model"
import { HttpClient } from "@angular/common/http"

@Injectable({
  providedIn: "root",
})
export class LieuxService {
  constructor(private http: HttpClient) {}

  private lieuxUrl = "http://localhost:8080/lieux"

  findAll(): Observable<Lieux[]> {
    return this.http.get<Lieux[]>(this.lieuxUrl)
  }
}
