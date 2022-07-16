import 'package:flutter/material.dart';
import 'package:project/views/list_view.dart';
import 'package:project/views/profile.dart';
import 'package:project/views/galeria.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _Menus();
}

class _Menus extends State<Menu> {
  int _selectedIndex = 0;

  static const TextStyle _options =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  static const List<Widget> _widgets = <Widget>[
    List_Product(),
    Profile(),
    List_View(),
    Galeria(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 81, 214),
        title: const Text('Easy Store'),
      ),
      body: Center(
        child: _widgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 168, 81, 214),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 168, 81, 214),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Users',
            backgroundColor: Color.fromARGB(255, 168, 81, 214),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Galery',
            backgroundColor: Color.fromARGB(255, 168, 81, 214),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 9, 9, 9),
        onTap: _onItemTapped,
      ),
    );
  }
}
