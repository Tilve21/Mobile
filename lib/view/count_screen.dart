import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}


class _ContadorScreenState extends State<ContadorScreen> {  

  int count = 0;

  @override
  Widget build(BuildContext context) {
    const sizeText = TextStyle(fontSize: 24, color: Colors.red);
    const color = Color.fromARGB(255, 6, 0, 166);
    return Scaffold(
        //backgroundColo
        appBar: AppBar(
          elevation: 8.0,
          backgroundColor: color,
          title: Text('Contador'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Number push',
              style: TextStyle(fontSize: 24),
            ),
            Text('$count', style: sizeText),
          ],
        )),
        floatingActionButton: FloatingActionButton(
            backgroundColor: color,
            child: const Icon(Icons.access_alarms),
            onPressed: () {
              print('hi,Again');
              incrementarContador();              
            }));
  }
  void incrementarContador() {
    setState(() {
      count++;
    });
  } 
}
