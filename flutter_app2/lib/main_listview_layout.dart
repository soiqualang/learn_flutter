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
    List lst1data=["h1","h2","h3","h4","h5"];
    List lst2data=["h1 note","h2 hahahaha","h3 work","h4 go shopping","hehehe"];

    ListView lst1=new ListView.builder(
      itemBuilder: (context, position) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 6.0),
                      child: Text(
                        lst1data[position],
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 12.0),
                      child: Text(
                        lst2data[position],
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "5m",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.star_border,
                          size: 35.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 2.0,
              color: Colors.grey,
            )
          ],
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