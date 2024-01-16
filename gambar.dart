import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class gambarWidget extends StatelessWidget {
  const gambarWidget({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.message, color: Colors.white,), backgroundColor: Colors.lightGreen,),
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Home")
      ),
      body: Image(image: AssetImage("assets/mt15.jpeg"),)
    );

  }
}