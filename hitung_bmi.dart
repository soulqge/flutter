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
  double inputUserT = 0;
  double inputUserB = 0;
  double rBmi = 0;
  String bmiR = '';

  

  final MyControllerT = TextEditingController();
  final MyControllerB = TextEditingController();

  @override
  void dispose(){
    MyControllerT.dispose();
    super.dispose();
  }

  void convert(){
    setState(() {
      inputUserT = double.tryParse(MyControllerT.text) ?? 0;
      inputUserB = double.tryParse(MyControllerB.text) ?? 0;
      rBmi = inputUserB / (inputUserT*inputUserT);
    });
  }

    String hBmi() {
    if (rBmi <= 18.5) {
      return "Anda Kekurusan";
    } else if (rBmi >= 18.6 && rBmi <= 25) {
      return "Anda Normal";
    } else if (rBmi >= 25.1) {
      return "Anda Kegemukan";
    } else {
      return "";
    }
  }

  void reset(){
    setState(() {
      MyControllerT.clear();
      MyControllerB.clear();
      inputUserB = 0;
      inputUserT = 0;
      rBmi = 0;
      bmiR = "";
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
              controller: MyControllerT,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter> [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}$'))
              ],
              decoration: InputDecoration(
                hintText: "Masukkan Tinggi Badan (M)",
              ),
            ),
              TextFormField(
              controller: MyControllerB,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter> [
                FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}$'))
              ],
              decoration: InputDecoration(
                hintText: "Masukkan Berat Badan (KG)",
              ),
            ),
              Container(
                  margin: EdgeInsets.only(top: 25),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[              
                      Text("Hasil BMI : ", style: TextStyle(fontSize: 16),),
                      Text("${rBmi.toStringAsFixed(2)}", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                 ),
                 Container(
                  margin: EdgeInsets.only(top: 25),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children:[              
                      Text("Hasil BMI : $bmiR", style: TextStyle(fontSize: 16),),
                    ],
                  ),
                 ),
             Expanded(child: Container()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        convert();
                        setState(() {
                          bmiR = hBmi();
                        });
                      }, 
                      child: Text("Hitung BMI"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white
                      ),
                    ),
                    ElevatedButton(
                      onPressed: 
                      reset, 
                      child: 
                      Text("Reset"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                    )
                  ],
                )
          ],
        ),
      ),
    );
  }
}

