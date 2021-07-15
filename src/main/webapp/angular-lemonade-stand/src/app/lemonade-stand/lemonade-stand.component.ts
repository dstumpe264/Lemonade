import { Component, OnInit } from '@angular/core';
import { Lemonadestand } from '../lemonadestand'

@Component({
  selector: 'app-lemonade-stand',
  templateUrl: './lemonade-stand.component.html',
  styleUrls: ['./lemonade-stand.component.scss']
})
export class LemonadeStandComponent implements OnInit {
	
	lemonadestand: Lemonadestand = {
		id: 1,
		name: "Stumpy\'s Lemonade"
	};

  constructor() { }

  ngOnInit(): void {
  }

}
