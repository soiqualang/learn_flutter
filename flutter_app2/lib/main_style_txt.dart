import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new App1()
  ));
}

Function showDialog1(context,vtxt1,vtxt2){
  Text ditxt=new Text("Tên bạn là: $vtxt1 \n"
                      "Tuổi bạn là: $vtxt2");
  AlertDialog dialog1=new AlertDialog(
    content: ditxt,
  );

  showDialog(
    context: context,
    builder: (BuildContext context){
      return dialog1;
    }
  );
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
        hintText: "Soiqualang Chenreu",
        icon: Icon(Icons.add_a_photo)
      ),
      onChanged: (value){
        try{
          vtxt1=value;
        }catch(exception){
          vtxt1="";
        }
      },
      focusNode: ftxt1,
      style: TextStyle(color: Colors.red,fontWeight: FontWeight.w300),
      maxLength: 40,
      //Make textbox expandable
      maxLines: null,
      //textInputAction: TextInputAction.newline,
      //mat khau
      //obscureText: true,
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

    RaisedButton btn3=new RaisedButton(
      child: new Text("Kq"),
      onPressed: (){
        showDialog1(context,vtxt1,vtxt2);
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
              btn3
            ]
        )
    );

    AppBar appBar = new AppBar(title: new Text("soiqualang"));

    Scaffold scaffold = new Scaffold(appBar: appBar,
        body: container);

    return scaffold;

  }
}