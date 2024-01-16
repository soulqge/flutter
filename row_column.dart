import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class rowColWidget extends StatelessWidget {
  const rowColWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row And Col"),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.purpleAccent,
            child: FlutterLogo(
              size: 90.0,
            ),
          ),
          Container(
            color: Colors.greenAccent,
            child: FlutterLogo(
              size: 90.0,
            ),
          ),
          Row(
            children: [
              Container(
                color: Colors.yellowAccent,
                child: FlutterLogo(
                  size: 90.0,
                ),
              ),
              Container(
                color: Colors.blueAccent,
                child: FlutterLogo(
                  size: 90.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}