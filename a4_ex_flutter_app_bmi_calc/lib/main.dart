import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'soiqualang',
      home: new bmi_calc(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
  ));
}

class bmi_calc extends StatefulWidget{
  @override
  bmi_calc_State createState(){
    return new bmi_calc_State();
  }
}

class bmi_calc_State extends State<bmi_calc> {
  double pheight=0;
  double pweight=0;
  double vbmi=0;
  String txt_res="";

  void bmi_calc(){
    setState(() {
      vbmi=pweight/(pheight*pheight);
      txt_res="Your BMI: $vbmi";
    });
  }

  @override
  Widget build(BuildContext context) {
    //text height
    TextField txt_height=new TextField(
      decoration: InputDecoration(
        labelText: "Your height:",
      ),
      keyboardType: TextInputType.numberWithOptions(),
      onChanged: (v){
        try{
          pheight=double.parse(v);
        }catch(exception){
          pheight=0;
        }
      },
    );
    //text weight
    TextField txt_weight=new TextField(
      decoration: InputDecoration(
        labelText: "Your weight:",
      ),
      keyboardType: TextInputType.numberWithOptions(),
      onChanged: (v){
        try{
          pweight=double.parse(v);
        }catch(exception){
          pweight=0;
        }
      },
    );
    //text result
    Text txt_kq=new Text(txt_res,style: TextStyle(fontSize: 24),);
    //Button Calc
    RaisedButton rbtn_calc=new RaisedButton(
      child: Text("Calculator",style: TextStyle(fontSize: 18),),
      onPressed: bmi_calc,
    );

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [
              txt_weight,
              txt_height,
              rbtn_calc,
              txt_kq,
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

