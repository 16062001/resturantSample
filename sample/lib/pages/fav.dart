import 'package:flutter/material.dart';
import 'package:sample/filters.dart';
import 'package:sample/pages/categories.dart';
class fav extends StatefulWidget {
  const fav({super.key});

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [

            ListTile(
              title: Text("All meals"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>categories()));
              },
            ),
            ListTile(
              title: Text("filters"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>filters()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar (title: Text("Favourites") ,

      ),

    );
  }
}
