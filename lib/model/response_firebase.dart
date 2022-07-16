import 'package:project/model/registros.dart';

class ResponseFirebase{

  List<Registros>? registro;
  

  ResponseFirebase({this.registro});
  
 
     factory ResponseFirebase.fromJson(List list) => ResponseFirebase(
      registro: list.map((e) => Registros.fromJson(e)).toList());

    

 }

 