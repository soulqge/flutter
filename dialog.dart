// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class dialogWidget extends StatelessWidget {
  const dialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        backgroundColor: Colors.deepPurple,
      ),
      body: MyLayout(),
    );
  }
}

class MyLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: (){
          showAlertDialog(context);
        }, child: Text("Show Text"),
      ), 
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okBotton = ElevatedButton(
  onPressed: () {}, 
  child: Text("OK"));
  AlertDialog Alert = AlertDialog(
    title: Text("My Title"),
    content: Text("This Is My Message"),
    actions: [
      okBotton,
    ],
  );
  showDialog(
    context: context, 
    builder: (BuildContext context){
      return Alert;
    }
  );
}