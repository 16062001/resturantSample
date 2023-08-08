import 'package:flutter/material.dart';
import 'pages/categories.dart';

import 'pages/fav.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int _selectedIndex = 0;

  static const List <Widget> _widgetOptions = <Widget> [
   categories(),
    fav(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
  return Scaffold(
  body :
    _widgetOptions.elementAt(_selectedIndex),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(

          icon: Icon(Icons.category_sharp),
          label: "Categories",
          backgroundColor: Colors.indigo,

        ),
        BottomNavigationBarItem(

          icon: Icon(Icons.favorite_sharp),
          label: "favorites",
          backgroundColor: Colors.black45,

        ),
      ],

      type: BottomNavigationBarType.shifting,
      onTap: _onItemTapped,
      backgroundColor: Colors.deepOrange,
      iconSize: 20,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      elevation: 5,

    ),


  );
  }
}
