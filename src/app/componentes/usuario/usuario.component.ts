import { Component } from '@angular/core';
import { BackendService } from 'src/app/servicios/backend.service';
import { FormGroup, FormBuilder } from '@angular/forms';
import { usuario } from 'src/app/servicios/usuario';
import { Route, Router } from '@angular/router';
import { AppComponent } from 'src/app/app.component';


@Component({
  selector: 'app-usuario',
  templateUrl: './usuario.component.html',
  styleUrls: ['./usuario.component.css']
})
export class UsuarioComponent {
  formularioUsuario:FormGroup;
  usuario:any;
  correoV:any;

  constructor(
    private backendService:BackendService,
    public formulario:FormBuilder,
    private ruteador:Router
    ){
      

      this.formularioUsuario = this.formulario.group({
        nombre: [''],
        apellido: [''],
        correo: [''],
        contrasena: ['']
      });
  
      this.usuario = backendService.usuarioIniciado;
  
      if (this.usuario) {
        this.formularioUsuario.setValue({
          nombre: this.usuario.nombre,
          apellido: this.usuario.apellido,
          correo: this.usuario.correo,
          contrasena: this.usuario.contrasena
        });
      }
  }
  historial:any;

  ngOnInit(): void {
    this.backendService.obtenerHistorial(this.backendService.usuarioIniciado.id).subscribe(respuesta => {
      console.log(respuesta);
      this.historial=respuesta;
    });
    

  }

  resCorreo:any;
  
  enviarDatos():any{
    console.log('Me presionaste');
    console.log(this.formularioUsuario.value);
    const correoControl = this.formularioUsuario.get('correo')
    if (correoControl){
      this.correoV = correoControl.value;
    }
    console.log(this.correoV);
    
    this.backendService.editarUsuario(this.usuario.id,this.formularioUsuario.value).subscribe();
    this.backendService.obtenerUsuario(this.correoV).subscribe((respuesta)=>{
      this.resCorreo = respuesta;
      this.backendService.usuarioIniciado = this.resCorreo[0];
    });
    
  }

  datos():void{
    window.confirm("Datos enviados");
  }


}
