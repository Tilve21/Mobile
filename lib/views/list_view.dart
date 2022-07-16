import 'package:flutter/material.dart';
import 'package:project/domain/firebase_connection.dart';
import 'package:project/provider/data_provider.dart';

class List_View extends StatefulWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  State<List_View> createState() => _ListViewState();
}

class _ListViewState extends State<List_View> {
  @override
  Widget build(BuildContext context) {
    FirebaseConnection fireBaseConnection = FirebaseConnection();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: DataProvider()
            .recorrerLista(context, fireBaseConnection.getRegisters()));
  }
}

class List_Product extends StatefulWidget {
  const List_Product({Key? key}) : super(key: key);

  @override
  State<List_Product> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_Product> {
  @override
  Widget build(BuildContext context) {
    FirebaseConnection fireBaseConnection = FirebaseConnection();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: DataProviderProduct()
            .recorrerListaProduct(context, fireBaseConnection.getRegisters()));
  }
}
