class Producto {
  final String? nombre;
  final int? codigob;
  final String? descripcion;
  final int? precio;
  final int? stock;
  final String? image;
  

  Producto({this.nombre,this.codigob,this.descripcion,
      this.precio,this.stock,this.image});
      
  factory Producto.fromJson(Map<Object?, dynamic> json ){
    return Producto(
      nombre:   json['nombre'],
      codigob:  json['codigob'],
      descripcion: json['descripcion'],
      precio:   json['precio'],
      stock:    json['stock'],
      image: json['image'],
    );

  }


      
      }