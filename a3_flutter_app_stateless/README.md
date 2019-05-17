# a3_flutter_app_stateless

a3_flutter_app_stateless_widgets

**main_manual.dart**

Add card manualy

```dart
Column col=new Column(
  //Stretch column full width
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
	new Card(
	  child: new Container(
		padding: const EdgeInsets.all(20),
		child: new Column(
		  children: <Widget>[
			new Text("Favorite",style: txtstyle),
			new Icon(Icons.favorite,size: iconsize,),
		  ],
		),
	  ),
	),
	new Card(
	  child: new Container(
		padding: const EdgeInsets.all(20),
		child: new Column(
		  children: <Widget>[
			new Text("Favorite",style: txtstyle),
			new Icon(Icons.favorite,size: iconsize,),
		  ],
		),
	  ),
	)
  ],
);
```

<img src="./img/Screenshot_1558064170.png" width="300px">

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
