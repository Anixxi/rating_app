import { Component, OnInit } from '@angular/core';
import { LieuxService } from '../services/lieux.service';
import { Lieux } from '../models/lieux.model';

@Component({
  selector: 'app-lieux',
  templateUrl: './lieux.component.html',
  styleUrls: ['./lieux.component.scss']
})
export class LieuxComponent implements OnInit {
  lieux: Lieux[] = [];

  constructor(private lieuxService: LieuxService) {}

  ngOnInit(): void {
    this.getLieux();
  }

  getLieux(): void {
    this.lieuxService.findAll()
      .subscribe(lieux => {
        this.lieux = lieux;
      });
  }
}
