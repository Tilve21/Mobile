import 'package:flutter/material.dart';
import 'package:project/model/pago.dart';
import 'package:project/model/producto.dart';

class DetailView extends StatelessWidget {
  final registro;
  const DetailView({Key? key, required this.registro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String fullName = '${registro.nombre!} ${registro.apellido!}';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 81, 214),
        title: Text(
          fullName,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 180,
                        margin: const EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(registro.producto.image!),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.call, color: Colors.black),
                              Text('  Celular: ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1!
                                      .copyWith(color: Colors.black)),
                              Text(registro.celular.toString()),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: <Widget>[
                                    const SizedBox(height: 2.0),
                                    _getCardProducto(registro.producto!),
                                    const SizedBox(height: 3.0),
                                    _getCardPago(registro.pago!),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _getCardProducto(Producto producto) {
    return Column(
      children: <Widget>[
        const Text("Detalle Producto",
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold)),
        _getRow("Nombre:  ", "${producto.nombre}"),
        _getRow("Codigo:  ", "${producto.codigob}"),
        _getRow("Descripcion:  ", "${producto.descripcion}"),
        _getRow("Precio:  ", "${producto.precio}"),
        _getRow("Stock:  ", "${producto.stock}"),
      ],
    );
  }

  Column _getCardPago(Pago pago) {
    return Column(
      children: <Widget>[
        const Text("Forma de Pago",
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold)),
        _getRow("Efectivo:  ", "${pago.efectivo}"),
        _getRow("Credito:  ", "${pago.credito}"),
        _getRow("Giro:  ", "${pago.giro}"),
      ],
    );
  }

  Row _getRow(String title, String value) {
    return Row(
      children: <Widget>[
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}
