import { Component, OnInit } from '@angular/core';
import { example } from '../example';

@Component({
  selector: 'app-getting-started',
  templateUrl: './getting-started.component.html',
  styleUrls: ['./getting-started.component.scss']
})
export class GettingStartedComponent implements OnInit {
	
//	add(name:string): void{
//		name = name.trim();
//		if (!name) { return;}
//		this.gettingStartedService.addName({ name} as Lemonadestand) 
//			.subscribe(lemonadestand => {
//				this.lemonadestand.push(lemonadestand);
//			});
//	}
	
	example = example;

  constructor() { }

  ngOnInit(): void {
  }

}
