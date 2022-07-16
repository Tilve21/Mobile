class Pago {
  final String? efectivo;
  final String? credito;
  final String? giro;

  Pago({this.efectivo, this.credito, this.giro});

  factory Pago.fromJson(Map<Object?, dynamic> json) {
    return Pago(
      efectivo: json['efectivo'],
      credito: json['credito'],
      giro: json['giro'],
    );
  }
}
