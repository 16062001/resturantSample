import 'package:flutter/material.dart';

class meal extends StatefulWidget {
  const meal({super.key});

  @override
  State<meal> createState() => _mealState();
}

class _mealState extends State<meal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  Image(image: AssetImage("assets/maashi.jpg")),
                  Text("data"),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                        Icon(Icons.timelapse),
                        Text("duration")
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.info_outline_rounded),
                      Text("Ingredients")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}
