import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'soiqualang',
    home: new MyHome(),
    theme: ThemeData(
      primarySwatch: Colors.green,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHome extends StatefulWidget{
  @override
  MyHome_State createState(){
    return new MyHome_State();
  }
}

class MyHome_State extends State<MyHome> {
  //Make dialog
  AlertDialog dia=new AlertDialog(
    content: new Text("hahahahaha",style: new TextStyle(fontSize: 30,color: Colors.yellowAccent),),
  );
  RaisedButton btn=new RaisedButton(
    child: new Text("Show dialog"),
    onPressed: showDialog(
        context: context,
        builder: (
          BuildContext con
        )
    ),
  );

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