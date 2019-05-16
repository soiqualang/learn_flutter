import 'package:flutter/material.dart';
import 'package:flutter_medium_layout/NewsArticle.dart';
import 'package:flutter_medium_layout/NewsHelper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    //tao listview tin tuc
    ListView lst1=new ListView.builder(
      itemBuilder: (context,position){
        NewsArticle article=NewsHelper.getArticle(position);
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(article.categoryTitle,style: TextStyle(color: Colors.black38,fontWeight: FontWeight.w500,fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,12.0,0.0,12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Flexible(child: Text(article.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),), flex: 3,),
                        Flexible(
                          flex: 1,
                          child: Container(
                              height: 80.0,
                              width: 80.0,
                              child: Image.asset("assets/" + article.imageAssetName, fit: BoxFit.cover,)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(article.author, style: TextStyle(fontSize: 18.0),),
                          Text(article.date + " . " + article.readTime, style: TextStyle(color: Colors.black45, fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Icon(Icons.bookmark_border),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
      itemCount: NewsHelper.articleCount,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(fontWeight: FontWeight.w400),),
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications_none,color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.search,color: Colors.grey,),
          )
        ],
      ),
      body: lst1,
      //Them menu
      drawer: Drawer(),
    );
  }
}


