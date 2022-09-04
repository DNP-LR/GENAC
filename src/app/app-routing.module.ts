import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {MainComponent} from "./main/main.component";
import {RouterModule, Routes} from "@angular/router";
import {RegistrationComponent} from "./registration/registration.component";
import {LoginComponent} from "./login/login.component";
import {DashboardComponent} from "./dashboard/dashboard/dashboard.component";
import {AdminSettingsComponent} from "./dashboard/component/admin-settings/admin-settings.component";
import {NavigationComponent} from "./dashboard/navigation/navigation.component";

// path:'', redirectTo: '/dashboard', pathMatch: 'full
const routes: Routes= [
  {path: 'main', title: 'Main Component',  component: MainComponent},
  {path: '', redirectTo: '/main', pathMatch: 'full'},
  {path: 'login', component: LoginComponent},
  {path: '', redirectTo : '/login', pathMatch: 'full'},
  {path: 'registration', component: RegistrationComponent},
  {path: '', redirectTo: '/registration', pathMatch: 'full'},
  {
    path: 'navigation.component', component: NavigationComponent,
    children: [
      {
        path: 'admin-settings.component', component: AdminSettingsComponent, // child route component that the router renders
      }
    ],
  }
];


@NgModule({
  declarations: [],
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
