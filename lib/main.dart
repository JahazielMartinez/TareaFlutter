import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

main() => runApp(Sensores());

class Sensores extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Estado();

}

class Estado extends State{
  GyroscopeEvent giroscopio;

  @override
  void initState(){
    super.initState();
    gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        giroscopio = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Giroscopio'
              'X: ${giroscopio.x.roundToDouble()}'
              ),
        ),

        backgroundColor: Color.fromRGBO(203, 50, 53, giroscopio.x)
      ) ,
    );
   }
}

