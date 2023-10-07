import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Libro-Click';

  logo1: string = 'assets/facelogo.png';
  logo2: string = 'assets/inslogo.png';
  logo3: string = 'assets/logoX.png';

  estado = 'Iniciar Seccion';
  num = 0;
  iniciado(num:number){
    if(num == 1){
      this.estado = 'Juan Marquez';
    }
  }

  chatVisible: boolean = false;

  toggleChat() {
    this.chatVisible = !this.chatVisible;
    // Aquí puedes agregar la lógica para mostrar/ocultar el cuadro de chat u otra acción relevante.
  }

}
