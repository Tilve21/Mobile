import 'package:flutter/material.dart';

class Contador extends StatefulWidget{
  const Contador({Key? key}) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
    int count = 0;

    void increasefn(){
      count++;
      setState(() {        
      });    
    }

    void decreasefn(){
      count--;
      setState(() {        
      });
    }

    void resetfn(){
      count=0;
      setState(() {        
      });
    }




  @override
  Widget build(BuildContext context){  
    const sizeText = TextStyle(fontSize: 24, color: Colors.red);
    const color = Color.fromARGB(255, 8, 2, 185);
    return Scaffold(
      //backgroundColo
      appBar:AppBar(
        elevation:8.0,
        backgroundColor:color,
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
            Text(
              '$count',
              style: sizeText
              ),
            ],
          )
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingCustomW(increase:increasefn, decrease: decreasefn, reset: resetfn,));
  }
}

class FloatingCustomW extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const FloatingCustomW({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
            Expanded( child: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed:()=> increase())),
            FloatingActionButton(
            child: const Icon(Icons.replay),
            onPressed: ()=> reset() ),
            Expanded( child:FloatingActionButton(             
            child: const Icon(Icons.remove),
            onPressed: ()=> decrease()))
    ],);
  }
}