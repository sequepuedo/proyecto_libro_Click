import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { usuario } from './usuario';
import { libro } from './libro';
import { historial } from './historial';

@Injectable({
  providedIn: 'root'
})
export class BackendService {
  API: string="http://localhost/biblioteca/";
  constructor(private clienteHttp:HttpClient) {
  }

  usuarioAutenticado: boolean = false;
  sinUsuario: boolean = true;

  usuarioIniciado:any;
  
  

  agregarUsuario(datosUsuario:usuario):Observable<any>{
    return this.clienteHttp.post(this.API+"?insertar=1",datosUsuario);
  }

  obtenerLibros(){
    return this.clienteHttp.get(this.API+"?libros");
  }

  obtenerUsuario(correo:any):Observable<any>{
    return this.clienteHttp.get(this.API+"?consultarM="+correo)
  }

  obtenerUsuarioCon(contrasena:any):Observable<any>{
    return this.clienteHttp.get(this.API+"?consultarC="+contrasena)
  }

  obtenerUsuCon(correo: string, contrasena: string): Observable<any> {
    return this.clienteHttp.get(this.API + `?consultarM=${correo}&consultarC=${contrasena}`);
  }

  editarUsuario(id:any, datosUsuario:any):Observable<any>{
    return this.clienteHttp.post(this.API+"?actualizar="+id,datosUsuario);
  }

  agregarLibro(idlibro:string, idusuario:string, titulo:string, estado:string):Observable<any>{
    const datosHistorial = {
      idlibro: idlibro,
      idusuario: idusuario,
      titulo: titulo,
      estado: estado
    };
    return this.clienteHttp.post(this.API+"?insertarH=1",datosHistorial);
  }

  obtenerHistorial(usuid:any):Observable<any>{
    return this.clienteHttp.get(this.API+"?consultarH="+usuid)
  }
  
}
