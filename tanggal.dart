import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class tanggalWidget extends StatefulWidget {
  const tanggalWidget({super.key, this.title});
  final String? title;

  @override
  State<tanggalWidget> createState() => _tanggalWidgetState();
}

class _tanggalWidgetState extends State<tanggalWidget> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context)async {
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: selectedDate, 
      firstDate: DateTime(2015, 8), 
      lastDate: DateTime(2101));

      if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          SizedBox(
            height: 20.0,
          ),ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              }, 
              child: Text('Pilih Tanggal'))
        ],
      ) ),
    );
  }
}