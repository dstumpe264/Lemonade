import { Component, OnInit } from '@angular/core';
import {Lemonadestand } from '../lemonadestand';


@Component({
  selector: 'app-getting-started',
  templateUrl: './getting-started.component.html',
  styleUrls: ['./getting-started.component.scss']
})
export class GettingStartedComponent implements OnInit {
	
		lemonadestand: Lemonadestand = {
		id: 1,
		name: 'Stumpy\'s Lemonade'
		
	};

  constructor() { }

  ngOnInit() {
  }

}
