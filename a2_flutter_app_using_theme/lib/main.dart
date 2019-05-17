import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    //Don't show debug
    debugShowCheckedModeBanner: false,
    title: 'soiqualang',
    home: new App1(),
    theme: new ThemeData(
      //primary color
      primarySwatch: Colors.green,
      //float button
      accentColor: Colors.lightGreenAccent,
      backgroundColor: Colors.pinkAccent,
    ),
  ));
}

class App1 extends StatelessWidget{
  //Tao giao dien nguoi dung
  @override
  Widget build(BuildContext context) {
    //Content
    Container container = new Container(
        decoration: new BoxDecoration(color: Colors.deepOrange),
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text("hahahahaha",style: Theme.of(context).textTheme.title),
        )
    );
    //Float button
    FloatingActionButton fbtn=new FloatingActionButton(
      //override accent color
      backgroundColor: Colors.amber,
      onPressed: null,
      child: Icon(Icons.add_a_photo),
    );

    AppBar appBar = new AppBar(title: new Text("soiqualang"));
    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: container,
        floatingActionButton: fbtn,
        drawer: Drawer(),
    );
    return scaffold;

  }
}