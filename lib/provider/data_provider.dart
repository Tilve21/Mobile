import 'package:flutter/material.dart';
import 'package:project/model/registros.dart';
import 'package:project/provider/list_provider.dart';
import 'package:project/provider/listproviderproduct.dart';

class DataProvider {
  Widget recorrerLista(
      BuildContext context, Future<List<Registros>?> registros) {
    return FutureBuilder(
      future: registros,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: [ListProvider.showList(snapshot.data, context)],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class DataProviderProduct{
Widget recorrerListaProduct(
      BuildContext context, Future<List<Registros>?> productos) {
    return FutureBuilder(
      future: productos,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: [ListProviderProduct.showList(snapshot.data, context)],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }








}