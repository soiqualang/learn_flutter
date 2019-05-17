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
  String txt_des="";

  void bmi_calc(){
    setState(() {
      vbmi=pweight/(pheight*pheight);
      bmi_des();
      txt_res="Your BMI: $vbmi";
      txt_res=txt_res+"\n"+txt_des;
    });
  }
  void bmi_des(){
    if(vbmi<=18.5){
      txt_des="Bạn có thể trạng gầy \n"
              + "Nguy cơ phát triển bệnh thấp";
    }else if(vbmi>18.5 && vbmi<=24.9){
      txt_des="Bạn có thể trạng bình thường \n"
          + "Nguy cơ phát triển bệnh trung bình";
    }else if(vbmi>25 && vbmi<=29.9){
      txt_des="Bạn có thể trạng hơi béo \n"
          + "Nguy cơ phát triển bệnh cao";
    }else if(vbmi>30 && vbmi<=34.9){
      txt_des="Bạn bị béo phì cấp độ 1 \n"
          + "Nguy cơ phát triển bệnh cao";
    }else if(vbmi>35 && vbmi<=39.9){
      txt_des="Bạn bị béo phì cấp độ 2 \n"
          + "Nguy cơ phát triển bệnh rất cao";
    }else if(vbmi>40){
      txt_des="Bạn bị béo phì cấp độ 3 \n"
          + "Nguy cơ phát triển bệnh rất nguy hiểm";
    }else{
      txt_des="Sai dữ liệu!";
    }
  }

  @override
  Widget build(BuildContext context) {
    //Tile
    Text title=new Text("BMI calculator",style: TextStyle(fontSize: 34,color: Colors.pink),);
    //text height
    TextField txt_height=new TextField(
      decoration: InputDecoration(
        labelText: "Your height (m):",
        icon: Icon(Icons.crop_portrait)
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
        labelText: "Your weight (kg):",
        icon: Icon(Icons.crop_16_9)
      ),
      //textInputAction: TextInputAction.newline,
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
    //Imgae
    Image img_danhgia=new Image.asset("assets/Phuong_phap_2_1.jpg");

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              title,
              txt_weight,
              txt_height,
              rbtn_calc,
              Divider(),
              txt_kq,
              img_danhgia,
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

