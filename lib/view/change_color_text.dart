import 'package:flutter/material.dart';

class ChangeColor extends StatelessWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Zuly Barrios App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;
    var _color = Colors.red;
    

    void _incrementCounter() {
    
    setState(() {     
    _counter++;

    if(_counter % 2 == 0){
      _color = Colors.red;
    }else{
      _color = Colors.blue;
      }   

    });  
  }

@override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:      
      
      Center(
        child: Column(        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(                
                color: _color
              ),  

            ),
            Text(              
              'Soy un Contador: '
              '$_counter',
              style: Theme.of(context).textTheme.headline4?.copyWith(color: _color),
            ),
          ],
        ),
        
                  
        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _color,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 

      
    );    
        
  }
}