// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class containerWidget extends StatelessWidget {
  const containerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Button"),
          backgroundColor: Colors.deepPurple,),
          body:
            SingleChildScrollView(
              child: Column(children: [
                      Container(
                      child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.purple
              ),
              child: Text(
              "Kembali?",
              style: TextStyle(fontSize: 20,color: Colors.white,),)
              ),
                    ),
                      Container(
              margin: EdgeInsets.all(50),
              height: 200,
              width: 200,
              alignment: Alignment.center,
              color: Colors.deepPurple,
              child: Text(
                'Semangat Belajar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                  ),
              ),
                      ), 
                      Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/mt15.jpeg"),
                  fit: BoxFit.fitWidth,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 8,
                  ),
              ),
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
              transform: Matrix4.rotationZ(-0.1),
                      ),
                    Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/mt15.jpeg"),
                  fit: BoxFit.fitWidth,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 8,
                  ),
              ),
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
              transform: Matrix4.rotationZ(-0.1),
                      )
                    ],),
            ) 
      ),
    );
  }
}