import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppBar appBar = new AppBar(title: new Text("soiqualang"));
    Center txt1=new Center(
      child: Text("hahahahaha",style: TextStyle(fontSize: 24),),
    );
    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: txt1,
        drawer: Drawer(),
    );


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: scaffold,
    );
  }
}
