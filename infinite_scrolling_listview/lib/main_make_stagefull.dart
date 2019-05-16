import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    AppBar appBar = new AppBar(title: new Text("soiqualang"));
    Center txt1=new Center(
      //child: Text("hahahahaha",style: TextStyle(fontSize: 24),),
      //child: Text(wordPair.asPascalCase),
      child: RandomWords(),
    );
    Scaffold scaffold = new Scaffold(
        appBar: appBar,
        body: txt1,
        drawer: Drawer(),
    );


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: scaffold,
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    final wordPair=WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
