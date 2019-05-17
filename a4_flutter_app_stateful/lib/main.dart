import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new App1()
  ));
}

class App1 extends StatelessWidget{
  //Tao giao dien nguoi dung
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