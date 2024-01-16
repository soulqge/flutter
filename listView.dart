import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class listWidget extends StatelessWidget {
  const listWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.purpleAccent,
            alignment: Alignment.topLeft,
            child: Text(
              "The Same Song On Repeat",
              style: TextStyle(fontSize: 20.0,color: Colors.white),
              ),
          ),
          Container(
            color: Color.fromARGB(255, 228, 111, 249),
            alignment: Alignment.topLeft,
            child: Text(
              "You Can Call Me Anything You Want",
              style: TextStyle(fontSize: 20.0,color: Colors.white),
              ),
              height: 400,
              width: 200,
          ),
          Container(
            color: Color.fromARGB(255, 134, 6, 156),
            alignment: Alignment.topLeft,
            child: Text(
              "It's Fine By Me",
              style: TextStyle(fontSize: 20.0,color: Colors.white),
              ),
              height: 200,
              width: 200,
          ),
        ],
      ),
    );
  }
}