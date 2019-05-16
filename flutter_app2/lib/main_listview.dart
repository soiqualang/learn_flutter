import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new App1()
  ));
}

class App1 extends StatelessWidget{
  List lst1data=["h1","h2","h3","h4","h5"];

  //Tao giao dien nguoi dung
  @override
  Widget build(BuildContext context) {
    ListView lst1=new ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Text(lst1data[position]),
        );
      },
      itemCount: lst1data.length,
    );

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 200,
                child: lst1,
              ),
            ),
            new IconButton(
              icon: Icon(Icons.remove_circle),
              iconSize: 48,
              onPressed: () {},
            ),
          ]
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