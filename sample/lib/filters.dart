import 'package:flutter/material.dart';
import 'package:sample/pages/categories.dart';
import 'pages/categories.dart';
class filters extends StatefulWidget {
  const filters({super.key});

  @override
  State<filters> createState() => _filtersState();
}

class _filtersState extends State<filters> {

  bool notify=false;
  bool notify2=false;
  bool notify3=false;
  bool notify4=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favourites ... " ),
          leading:IconButton(icon:  Icon(Icons.arrow_back),
            onPressed:() { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>categories()));}
          ),
      ),

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

      body:
      Column(

        children: [

          Container(
            margin:  EdgeInsets.all(20),
            child: const Center(

              child: Text("filters" ),
            ),
          ),

          SwitchListTile(

            title: Text("Gluten-free"),
            subtitle: Text("Only include Gluten-free meals!"),
            value: notify,
            onChanged: (val){
             setState(() {
               notify=val;
               print(notify);
             });
            },
          ),
          SwitchListTile(

            title: Text("Lactose-free"),
            subtitle: Text("Only include Lactose-free meals!"),
            value: notify2,
            onChanged: (val){
              setState(() {
                notify2=val;
                print(notify);
              });
            },
          ),
          SwitchListTile(

            title: Text("Vegetarian"),
            subtitle: Text("Only include Vegetarian meals!"),
            value: notify3,
            onChanged: (val){
              setState(() {
                notify3=val;
                print(notify);
              });
            },
          ),
          SwitchListTile(

            title: Text("Vegan"),
            subtitle: Text("Only include Vegan meals!"),
            value: notify4,
            onChanged: (val){
              setState(() {
                notify4=val;
                print(notify);
              });
            },
          ),
        ],
      )
      ,

    );
  }
}
