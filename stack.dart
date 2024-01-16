import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class stackWidget extends StatelessWidget {
  const stackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.greenAccent,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Perkenalan",
              style: TextStyle(
              fontSize: 20.0, 
              color: Colors.white),),
          ),
          Container(
            color: Colors.yellowAccent,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Pertemuan",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
              ),
              width: 400,
              height: 300,
          ),
          Container(
            color: Colors.redAccent,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Perpisahan",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
              ),
              width: 200,
              height: 200,
          )
        ],
      ),
    );
  }
}