import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {MainComponent} from "./main/main.component";
import {RouterModule, Routes} from "@angular/router";
import {RegistrationComponent} from "./registration/registration.component";
import {LoginComponent} from "./login/login.component";
import {IncrireComponent} from "./incrire/incrire.component";
import {NaissanceComponent } from "./naissance/naissance.component";
import {DemandeComponent } from "./demande/demande.component";
import { DeclarationComponent} from "./declaration/declaration.component";
import {PublicationsComponent } from "./publications/publications.component";
import { DecesComponent} from "./deces/deces.component";
import {DashboardComponent} from "./dashboard/dashboard/dashboard.component";
import {AdminSettingsComponent} from "./dashboard/component/admin-settings/admin-settings.component";
import {NavigationComponent} from "./dashboard/navigation/navigation.component";
import {FooterComponent} from "./footer/footer.component";

// path:'', redirectTo: '/dashboard', pathMatch: 'full
const routes: Routes= [
  {path: 'main', title: 'Main Component',  component: MainComponent},
  {path: '', redirectTo: '/main', pathMatch: 'full'},
  {path: 'login', component: LoginComponent},
  {path: '', redirectTo : '/login', pathMatch: 'full'},
  {path: 'incrire', component: IncrireComponent},
  {path: '', redirectTo: '/incrire', pathMatch: 'full'},
  {path: 'registration', component: RegistrationComponent},
  {path: '', redirectTo: '/registration', pathMatch: 'full'},
  {path: 'naissance', component: NaissanceComponent},
  {path: '', redirectTo: '/naissance', pathMatch: 'full'},
  {path: 'publications', component:PublicationsComponent },
  {path: '', redirectTo: '/publications', pathMatch: 'full'},
  {path: 'demande', component:DemandeComponent },
  {path: '', redirectTo: '/demande', pathMatch: 'full'},
  {path: 'deces', component:DecesComponent },
  {path: '', redirectTo: '/deces', pathMatch: 'full'},
  {path: 'declaration', component: DeclarationComponent },
  {path: '', redirectTo: '/declaration', pathMatch: 'full'},



  {path: 'footer', title: 'Footer Component',  component: FooterComponent},
  {path: '', redirectTo: '/footer', pathMatch: 'full'},
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
