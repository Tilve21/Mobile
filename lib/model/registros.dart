import 'package:project/model/producto.dart';
import 'pago.dart';

class Registros{

final Pago? pago;
final Producto? producto;
final String? nombre;
final String? apellido;
final int? dni;
final int? celular;
final String? image;

  Registros(
  {
    this.pago,
    this.producto,
    this.nombre, 
    this.apellido, 
    this.dni,
    this.celular,
    this.image
  
  });

factory Registros.fromJson(Map<Object?, dynamic> json ) {
    return Registros(
      pago:   json['Pago'] != null ? Pago.fromJson(json['Pago']) : null,
      producto: json['Producto'] != null ? Producto.fromJson(json['Producto']) : null,
      nombre: json['nombre'],
      apellido: json ['apellido'],
      dni: json ['dni'],
      celular: json['celular'],
      image: json['image']
    
    );
}

}