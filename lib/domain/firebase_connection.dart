import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:project/model/registros.dart';
import 'package:project/model/response_firebase.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<List<Registros>?> getRegisters() async {
    List<Registros> list = [];

    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final string = json.encode(response.value);
      final data = json.decode(string);
      data.forEach((key, element) {
        Registros? obj = Registros.fromJson(element);
        list.add(obj);
      });
      return list;
    } catch (e) {
      print(e);
    }
  }
}
