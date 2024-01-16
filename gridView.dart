import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class gridWidget extends StatelessWidget {
  const gridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount:3,
        children: [
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: Text("The Same Song", style: TextStyle(fontSize: 20.0, color: Colors.white),),
          ),
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Text("On Repeat", style: TextStyle(fontSize: 20.0, color: Colors.white),),
            width: 400,
            height: 300,
          ),
          Container(
            color: Colors.blueGrey,
            alignment: Alignment.center,
            child: Text("You Can Call Me", style: TextStyle(fontSize: 20.0, color: Colors.white),),
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.deepPurple,
            alignment: Alignment.center,
            child: Text("Anything You Want", style: TextStyle(fontSize: 20.0, color: Colors.white),),
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.cyan[800],
            alignment: Alignment.center,
            child: Text("It's Fine", style: TextStyle(fontSize: 20.0, color: Colors.white),),
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.yellow[800],
            alignment: Alignment.center,
            child: Text("By Me", style: TextStyle(fontSize: 20.0, color: Colors.white),),
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}