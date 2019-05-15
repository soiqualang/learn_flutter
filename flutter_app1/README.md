# flutter_app1

flutter_app1

## Tính tiền tip

Tạo `class **TipCalculator**` 

* Tạo Widget build(BuildContext context)
  * Tạo các phần tử trong app (TextField, RaisedButton,..)
  * Tạo Container
  ```dart
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
	```
	* Tạo AppBar
	```dart
	AppBar appBar = new AppBar(title: new Text("Tip Calculator"));
	```
	* Scaffold
	```dart
	Scaffold scaffold = new Scaffold(appBar: appBar,
        body: container);

    return scaffold;
	```

```dart
void main() {
  runApp(new MaterialApp(
      title: 'Tip Calculator',
      home: new TipCalculator()
  ));
}
```



## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
