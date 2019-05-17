import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new App1(),
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class App1 extends StatelessWidget{
  //Tao giao dien nguoi dung
  @override
  Widget build(BuildContext context) {


    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        //widget Center help full fill
        child: new Center(

        ),
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("./assets/pexels-photo-1212487.jpeg"),
            fit: BoxFit.fill
          )
        ),
    );

    AppBar appBar = new AppBar(title: new Text("soiqualang"));

    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: container,
    );

    return scaffold;

  }
}