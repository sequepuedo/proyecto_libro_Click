import { Component } from '@angular/core';
import { BackendService } from 'src/app/servicios/backend.service';

@Component({
  selector: 'app-ciencia',
  templateUrl: './ciencia.component.html',
  styleUrls: ['./ciencia.component.css']
})
export class CienciaComponent {
  libros:any

  constructor(private backendService:BackendService){}

  ngOnInit(): void {
    this.backendService.obtenerLibros().subscribe(respuesta => {
      this.libros=respuesta;
    });
  }
  
  guardar(libroid:string, titulo:string){
    console.log(libroid);
    if (this.backendService.usuarioAutenticado){
      this.backendService.agregarLibro(libroid, this.backendService.usuarioIniciado.id, titulo, 'guardado').subscribe();
      window.confirm("El Libro Fue Guardado Con Exito");
    }else{
      window.confirm("Debe Iniciar Seccion para poder Guardar");
    }

  }
  
  //PintarCard
  libroTitulo:any;
  libroPortada:any;
  libroAutor:any;
  libroPublicacion:any;
  libroGenero:any;
  libroResumen:any;
  pintarCard(LibroTitulo:string, libroPortada:string, libroAutor:string, libroPublicacion:string, libroGenero:string, libroResumen:string){
    this.libroTitulo = LibroTitulo
    this.libroPortada =libroPortada
    this.libroAutor = libroAutor
    this.libroPublicacion = libroPublicacion
    this.libroGenero = libroGenero
    this.libroResumen = libroResumen
    
  }
}
