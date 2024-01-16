import 'package:flutter/material.dart';
import 'package:flutter_dasar/container.dart';
import 'package:flutter_dasar/dialog.dart';
import 'package:flutter_dasar/gambar.dart';
import 'package:flutter_dasar/gridView.dart';
import 'package:flutter_dasar/listView.dart';
import 'package:flutter_dasar/row_column.dart';
import 'package:flutter_dasar/stack.dart';
import 'package:flutter_dasar/tanggal.dart';
import 'package:flutter_dasar/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'coba widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const containerWidget(),
    );
  }
}