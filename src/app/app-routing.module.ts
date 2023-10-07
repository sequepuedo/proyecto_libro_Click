import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { InicioComponent } from './componentes/inicio/inicio.component';
import { AventuraComponent } from './componentes/aventura/aventura.component';
import { CienciaComponent } from './componentes/ciencia/ciencia.component';
import { EducacionComponent } from './componentes/educacion/educacion.component';
import { FiccionComponent } from './componentes/ficcion/ficcion.component';
import { LiteraturaComponent } from './componentes/literatura/literatura.component';
import { UsuarioComponent } from './componentes/usuario/usuario.component';
import { ChatbotComponent } from './componentes/chatbot/chatbot.component';
import { RegistroComponent } from './componentes/registro/registro.component';
import { OlvidarComponent } from './componentes/olvidar/olvidar.component';

const routes: Routes = [
  {path: '', pathMatch:'full', redirectTo:'inicio'},
  {path: 'inicio', component: InicioComponent},
  {path: 'aventura', component: AventuraComponent},
  {path: 'ciencia', component: CienciaComponent},
  {path: 'educacion', component: EducacionComponent},
  {path: 'ficcion', component: FiccionComponent},
  {path: 'literatura', component: LiteraturaComponent},
  {path: 'usuario', component: UsuarioComponent},
  {path: 'chatbot', component: ChatbotComponent},
  {path: 'registro', component: RegistroComponent},
  {path: 'olvidar', component: OlvidarComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
