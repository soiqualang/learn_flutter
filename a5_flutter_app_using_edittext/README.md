# a5_flutter_app_using_edittext

a5_flutter_app_using_edittext

```dart
final TextEditingController txt_controller=new TextEditingController();
```

**TextField**
```dart
onSubmitted: (String str){
setState(() {
  results=results+"\n"+str;
  txt_controller.text="";
});
},
controller: txt_controller,
```

<img src="./img/Screenshot_1558083845.png" width="300px">

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
