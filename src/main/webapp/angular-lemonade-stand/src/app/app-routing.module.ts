import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { OwnerComponent } from './owner/owner.component';
import { ProductsComponent } from './products/products.component';
import { LemonadeStandComponent } from './lemonade-stand/lemonade-stand.component';

 


const routes: Routes = [
	{path: 'owner', component: OwnerComponent},
	{path: 'products', component: ProductsComponent},
	{path: 'lemonadestand', component: LemonadeStandComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
