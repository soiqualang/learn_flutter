import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'Tip Calculator',
      home: new TipCalculator()
  ));
}

class TipCalculator extends StatelessWidget{
  double billAmount=0.0;
  double tipPercentage=0.0;

  //Tao giao dien nguoi dung
  @override
  Widget build(BuildContext context) {
    //Tao textbox dau tien
    TextField billAmountField=new TextField(
      decoration: InputDecoration(
        labelText:"Bill Amount (\$)"
      ),
      keyboardType: TextInputType.number,
      onChanged: (value){
        try{
          billAmount=double.parse(value);
        }
        catch(exception){
          billAmount=0.0;
        }
      }
    );

    TextField tipPercentageField=new TextField(
      decoration: InputDecoration(
        labelText:"Tip %",
        hintText:"15",
      ),
      keyboardType: TextInputType.number,
      onChanged: (value){
        try{
          tipPercentage=double.parse(value);
        }
        catch(exception){
          tipPercentage=0.0;
        }
      }
    );

    //Tao 1 nut bam
    RaisedButton calculateButton=new RaisedButton(
      child: new Text("Calculate"),
      onPressed: (){
        double calculatedTip=billAmount*tipPercentage/100.0;
        double total=billAmount+calculatedTip;

        //Tao dialog thong bao
        AlertDialog dialog=new AlertDialog(
          content: new Text("Tip: \$$calculatedTip \n"
              "Total: \$$total")
        );

        //Hien thi dialog
        showDialog(
          context: context,
          builder: (BuildContext context){
            return dialog;
          }
          //builder: dialog
          //builder: (_) => new Text("Hello Dialgo")
        );
      }
    );

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [
              billAmountField,
              tipPercentageField,
              calculateButton
            ]
        )
    );

    AppBar appBar = new AppBar(title: new Text("Tip Calculator"));

    Scaffold scaffold = new Scaffold(appBar: appBar,
        body: container);

    return scaffold;

  }
}