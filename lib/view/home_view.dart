import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 226, 242, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 223, 169, 169),
        title: const Text('Home'),
      ),
      body: const Center(
        child: 
        Text("Este es el Home"))
      
    );
  }

}