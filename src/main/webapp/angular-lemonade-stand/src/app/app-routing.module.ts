import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { OwnerComponent } from './owner/owner.component';
import { LemonadeStandComponent } from './lemonade-stand/lemonade-stand.component';

 


const routes: Routes = [
	{path: 'home', component: 'OwnerComponent'},
	{path: 'home', component: 'ProductsComponent'},
	{path: 'home', component: 'Lemonade-StandComponent'},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
