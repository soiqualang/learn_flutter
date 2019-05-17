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
        new newcard(new Text("Favorite",style: txtstyle), new Icon(Icons.favorite,size: iconsize,)),
        new newcard(new Text("Alarm",style: txtstyle), new Icon(Icons.alarm,size: iconsize,)),
        new newcard(new Text("Airport Shuttle",style: txtstyle), new Icon(Icons.airport_shuttle,size: iconsize,)),
        new newcard(new Text("Done",style: txtstyle), new Icon(Icons.done,size: iconsize,)),
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

//Create a reusable make new card
class newcard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  // Constructor. {} here denote that they are optional values i.e you can use as: new newcard()
  newcard(this.title,this.icon);

  @override
  Widget build(BuildContext context) {
    Container container=new Container(
      padding: const EdgeInsets.only(bottom: 1),
      child: new Card(
        child: new Container(
          padding: const EdgeInsets.all(20),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
    );
    return container;
  }
}