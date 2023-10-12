import { Component } from '@angular/core';
import { FormGroup, FormBuilder} from '@angular/forms';
import { BackendService } from 'src/app/servicios/backend.service';
import { Route, Router } from '@angular/router';

@Component({
  selector: 'app-registro',
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent {
  formularioDeUsuarios:FormGroup;
  correoV:any;

  constructor(
    public formulario:FormBuilder,
    private backendService:BackendService,
    private ruteador:Router
    ){
    this.formularioDeUsuarios=this.formulario.group({
      nombre:[''],
      apellido:[''],
      correo:[''],
      contrasena:['']
    })
    
  }

  enviarDatos():any{
    console.log('Me presionaste');
    console.log(this.formularioDeUsuarios.value);
    const correoControl = this.formularioDeUsuarios.get('correo')
    if (correoControl){
      this.correoV = correoControl.value;
    }
    console.log(this.correoV);

    this.backendService.obtenerUsuario(this.correoV).subscribe((respuesta)=>{
      console.log(respuesta);
      if (!respuesta) {
        console.log("La Información no se encontró");
        this.backendService.agregarUsuario(this.formularioDeUsuarios.value).subscribe();
        this.ruteador.navigateByUrl('/inicio');
      }else{
        window.confirm("El Correo ya esta Registrado...");
      }
    });
    
  }
}
