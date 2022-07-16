import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_2/Entities/response_firebase.dart';

class FirebaseConnection {

 
    static final FirebaseDatabase _database = FirebaseDatabase.instance;

    DatabaseReference instanceFirebase(){
      return _database.ref('/Registros');
    }

/

  Future<ResponseFirebase>getRegisters() async {
    try{
      DatabaseReference  _registerRef = instanceFirebase();
      DataSnapshot response = await _registerRef.get();
      final registers = ResponseFirebase.fromJson(response.value as List);
      return registers;
    }
    catch(e){
      rethrow;
    }  
}  
}