import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'soiqualang',
    home: new MyEditText(),
    theme: ThemeData(
      primarySwatch: Colors.deepOrange,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyEditText extends StatefulWidget{
  @override
  MyEditTextState createState(){
    return new MyEditTextState();
  }
}

class MyEditTextState extends State<MyEditText> {
  String results="";
  final TextEditingController txt_controller=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //text for edit
    TextField txt_edit=new TextField(
      decoration: new InputDecoration(
        labelText: "Edit here:",
        hintText: "Text anything you want^^",
        icon: Icon(Icons.favorite),
      ),
      style: TextStyle(fontSize: 24,color: Colors.pink),
      onSubmitted: (String str){
        setState(() {
          results=results+"\n"+str;
          txt_controller.text="";
        });
      },
      controller: txt_controller,
    );
    //Hien thi kq
    Text txt_res=Text(results,style: TextStyle(fontSize: 32),);
    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              txt_edit,
              txt_res
            ],
          ),
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
