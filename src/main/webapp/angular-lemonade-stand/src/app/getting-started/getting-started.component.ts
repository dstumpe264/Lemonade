import { Component, OnInit } from '@angular/core';
import { example } from '../example';

@Component({
  selector: 'app-getting-started',
  templateUrl: './getting-started.component.html',
  styleUrls: ['./getting-started.component.scss']
})
export class GettingStartedComponent implements OnInit {
	
	example = example;

  constructor() { }

  ngOnInit(): void {
  }

}
