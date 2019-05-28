import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new bmi_calc(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
  ));
}

class bmi_calc extends StatefulWidget{
  @override
  bmi_calc_State createState(){
    return new bmi_calc_State();
  }
}

class bmi_calc_State extends State<bmi_calc> {


  @override
  Widget build(BuildContext context) {
    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [
            ]
        )
    );

    AppBar appBar = new AppBar(title: new Text("soiqualang"));
    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: container
    );
    return scaffold;
  }
}