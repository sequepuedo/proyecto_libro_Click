import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { InicioComponent } from './componentes/inicio/inicio.component';
import { AventuraComponent } from './componentes/aventura/aventura.component';
import { CienciaComponent } from './componentes/ciencia/ciencia.component';
import { EducacionComponent } from './componentes/educacion/educacion.component';
import { FiccionComponent } from './componentes/ficcion/ficcion.component';
import { LiteraturaComponent } from './componentes/literatura/literatura.component';
import { UsuarioComponent } from './componentes/usuario/usuario.component';
import { ChatbotComponent } from './componentes/chatbot/chatbot.component';
import { BackendService } from './servicios/backend.service';
import { RegistroComponent } from './componentes/registro/registro.component';
import { OlvidarComponent } from './componentes/olvidar/olvidar.component';

@NgModule({
  declarations: [
    AppComponent,
    InicioComponent,
    AventuraComponent,
    CienciaComponent,
    EducacionComponent,
    FiccionComponent,
    LiteraturaComponent,
    UsuarioComponent,
    ChatbotComponent,
    RegistroComponent,
    OlvidarComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [BackendService],
  bootstrap: [AppComponent]
})
export class AppModule { }
