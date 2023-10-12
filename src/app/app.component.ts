import { Component, OnInit, Renderer2, ElementRef } from '@angular/core';
import { FormGroup, FormBuilder} from '@angular/forms';
import { BackendService } from 'src/app/servicios/backend.service';
import { Route, Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  formularioSeccion:FormGroup;
  title = 'Libro-Click';

  logo1: string = 'assets/facelogo.png';
  logo2: string = 'assets/inslogo.png';
  logo3: string = 'assets/logoX.png';

  correoV:any;
  contrasenaV:any;
  mostrarModal = false;

  constructor(
    public formulario:FormBuilder,
    public backendService:BackendService,
    private ruteador:Router,
    private renderer: Renderer2,
    private el: ElementRef
    ){
      this.formularioSeccion=this.formulario.group({
        correo:[''],
        contrasena:['']
      })

  }

  ngOnInit() {
    // Verificar si mostrarModal es true y cerrar el modal
    this.mostrarModal = this.backendService.usuarioAutenticado;
    if (this.mostrarModal) {
      this.cerrarModal();
    }
  }

  cerrarModal() {
    const modal = this.el.nativeElement.querySelector('#exampleModal');
    if (modal) {
      this.renderer.addClass(modal, 'show');
      this.renderer.setStyle(modal, 'display', 'block');
    }
  }
  
  
  resCorreo:any;
  resContrasena:any;
  inicioSeccion(){
    const correoControl = this.formularioSeccion.get('correo')
    const contraControl = this.formularioSeccion.get('contrasena')
    if (correoControl&&contraControl){
      this.correoV = correoControl.value;
      this.contrasenaV = contraControl.value;
    }
    this.backendService.obtenerUsuarioCon(this.contrasenaV).subscribe((res)=>{
      this.resContrasena = res;
    });
    this.backendService.obtenerUsuario(this.correoV).subscribe((respuesta)=>{
      this.resCorreo = respuesta;
    });
    
    if (this.resCorreo != null){
      if (this.resContrasena != null){
        if (JSON.stringify(this.resContrasena) === JSON.stringify(this.resCorreo)) {
          this.backendService.usuarioIniciado = this.resCorreo[0];
          const primerUsuario = this.resCorreo[0];
          const nombreUsuario = primerUsuario.nombre;
          this.estado = nombreUsuario;
          console.log(this.backendService.usuarioIniciado);
          this.backendService.usuarioAutenticado = true;
          this.backendService.sinUsuario = false;
          window.confirm("Inicio Seccion Correcto");
          this.ruteador.navigate(['/usuario']);
        } else {
          window.confirm("Correo o Contraseña Incorrectos");
        }
      }
    }
  }
  
  estado = 'Iniciar Seccion';
  num = 0;
  iniciado(num:number){
    if(num == 1){
      this.estado = 'Juan Marquez';
    }
    
  }



  

}
