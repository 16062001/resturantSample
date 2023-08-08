import 'package:flutter/material.dart';
import 'package:sample/filters.dart';
import 'package:sample/pages/meals.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {



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

      appBar: AppBar(
        title: Text("Categories"),

      ),
      body:
      SizedBox(child: Row(
        children: [
          InkWell(

            child: Container(
              child: Text("Italian"),
              color: Colors.deepOrange,
              // width: double.infinity,
              // height: double.infinity,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),

            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>meal()));

            },
          ),
          InkWell(
            child: Container(
              child: Text("Italian"),
              color: Colors.deepOrange,
              width: 200,
              height: 100,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),

            ),
            onTap: (){},
          ), InkWell(
            child: Container(
              child: Text("Italian"),
              color: Colors.deepOrange,
              width: 200,
              height: 100,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),

            ),
            onTap: (){},
          ), InkWell(
            child: Container(
              child: Text("Italian"),
              color: Colors.deepOrange,
              width: 200,
              height: 100,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),

            ),
            onTap: (){},
          ),


        ],
      ),),


    );
  }
}
