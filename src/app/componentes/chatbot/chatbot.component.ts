import { Component } from '@angular/core';

@Component({
  selector: 'app-chatbot',
  templateUrl: './chatbot.component.html',
  styleUrls: ['./chatbot.component.css']
})
export class ChatbotComponent {
  chatVisible: boolean = false;

  toggleChat() {
    this.chatVisible = !this.chatVisible;
    // Aquí puedes agregar la lógica para mostrar/ocultar el cuadro de chat u otra acción relevante.
  }
}
