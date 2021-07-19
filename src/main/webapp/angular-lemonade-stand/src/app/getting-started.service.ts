	import { Injectable } from '@angular/core';
	import {HttpClient, HttpHeaders} from '@angular/common/http';
//	import {MessageService} from "/.message.service";
	import {catchError, map, tap} from "rxjs/operators";
	import { Observable } from 'rxjs';
	import { Lemonadestand } from './lemonadestand';
	
	@Injectable({
	  providedIn: 'root'
	})
	export class GettingStartedService {
		
		private lemonadestandUrl = 'api/lemonadestand';
		
		httpOptions = {
			headers: new HttpHeaders({ 'Content-Type': 'application/json'})
		};
	
//	  constructor( 
//		private http: HttpClient,
//		private messageService: MessageService){ }
	 
	
//		addLemonadestand(lemonadestand: Lemonadestand): Observable<Lemonadestand>{
//			return this.http.post<Lemonadestand>(this.lemonadestandUrl, lemonadestand, this.httpOptions).pipe(
//				tap((newLemonadestand: Lemonadestand) => this.log(`added lemonadestand w/ id=$(newLemonadestand.id)`)),
//				catchError(this.handleError<Lemonadestand>('addLemonadestand'))
//			);
//		}
		
	}
