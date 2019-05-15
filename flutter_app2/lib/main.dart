import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new App1()
  ));
}

class App1 extends StatelessWidget{
  String vtxt1;
  String vtxt2;
  FocusNode ftxt1=new FocusNode();
  FocusNode ftxt2=new FocusNode();

   //Tao giao dien nguoi dung
  @override
  Widget build(BuildContext context) {
    //Khi tao mot widget thi nho add no vao child cua container
    TextField txt1=new TextField(
      decoration: InputDecoration(
        labelText: "Nhap ten",
        hintText: "Soiqualang Chenreu"
      ),
      onChanged: (value){
        try{
          vtxt1=value;
        }catch(exception){
          vtxt1="";
        }
      },
      focusNode: ftxt1,
    );

    TextField txt2=new TextField(
      decoration: InputDecoration(
          labelText: "Nhap tuoi",
          hintText: "30"
      ),
      onChanged: (value){
        try{
          vtxt2=value;
        }catch(exception){
          vtxt2="";
        }
      },
      focusNode: ftxt2,
      keyboardType: TextInputType.numberWithOptions(),
    );

    RaisedButton btn1=new RaisedButton(
      child: new Text("Go to txt2"),
      onPressed: (){
        FocusScope.of(context).requestFocus(ftxt2);
      },
    );

    RaisedButton btn2=new RaisedButton(
      child: new Text("Go to txt1"),
      onPressed: (){
        FocusScope.of(context).requestFocus(ftxt1);
      },
    );


    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [
              txt1,
              txt2,
              btn1,
              btn2,
            ]
        )
    );

    AppBar appBar = new AppBar(title: new Text("soiqualang"));

    Scaffold scaffold = new Scaffold(appBar: appBar,
        body: container);

    return scaffold;

  }
}