import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new App1(),
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
    debugShowCheckedModeBanner: false,
  ));
}

class App1 extends StatelessWidget{
  //Tao giao dien nguoi dung
  @override
  Widget build(BuildContext context) {
    //define constant variable
    double txtsize=30;
    double iconsize=40;
    var txtstyle=new TextStyle(color: Colors.grey,fontSize: txtsize);

    Column col=new Column(
      //Stretch column full width
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Card(
          child: new Container(
            padding: const EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Text("Favorite",style: txtstyle),
                new Icon(Icons.favorite,size: iconsize,),
              ],
            ),
          ),
        ),
        new Card(
          child: new Container(
            padding: const EdgeInsets.all(20),
            child: new Column(
              children: <Widget>[
                new Text("Favorite",style: txtstyle),
                new Icon(Icons.favorite,size: iconsize,),
              ],
            ),
          ),
        )
      ],
    );
    //Content
    Container container = new Container(
        padding: const EdgeInsets.only(bottom: 2),
        child: new Center(
          child: new SingleChildScrollView(
            child: col,
          ),
        ),
    );

    AppBar appBar = new AppBar(title: new Text("soiqualang"));

    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: container
    );

    return scaffold;

  }
}