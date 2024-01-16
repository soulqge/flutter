import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class servicesWidget extends StatefulWidget {
  const servicesWidget({super.key});

  @override
  State<servicesWidget> createState() => _servicesWidgetState();
}

class _servicesWidgetState extends State<servicesWidget> {
  double inputUser = 0;
  double kelvin = 0;
  double reamur = 0;

  final MyController = TextEditingController();

  @override
  void dispose(){
    MyController.dispose();
    super.dispose();
  }

  void convert(){
    setState(() {
      inputUser = double.tryParse(MyController.text) ?? 0;
      kelvin = inputUser + 273.15;
      reamur = (4*inputUser) / 5.00;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Konversi Suhu"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: MyController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter> [
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                hintText: "Masukkan Suhu Dalam Celcius",
              ),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Container(
                  margin: EdgeInsets.only(top: 25),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[              
                      Text("Suhu dalam Kelvin", style: TextStyle(fontSize: 16),),
                      Text("${kelvin.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[              
                        Text("Suhu dalam Reamur", style: TextStyle(fontSize: 16),),
                        Text("${reamur.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
             ),
               ],
             ),
             Expanded(child: Container()),
                ElevatedButton(
                  onPressed: (){
                    convert();
                  }, 
                  child: Text("Konversi Suhu"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white
                  ),
              )
          ],
        ),
      ),
    );
  }
}
