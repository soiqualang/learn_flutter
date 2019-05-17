# a4_ex_flutter_app_bmi_calc

a4 practice make BMI calculator

Practice make a BMI calculator

<img src="./img/Phuong_phap_1_1.jpg" width="300px">

<img src="./img/Phuong_phap_2_1.jpg" width="300px">

## Build

### main_stateful_template.dart

Build a Stateful Widget template

### v2

**Config add image**

`pubspec.yaml`
```yaml
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
   - assets/
  #  - images/a_dot_ham.jpeg
```

Tính add thêm hình ảnh, tuy nhiên gặp lỗi tràn kích thước

<img src="./img/Screenshot_1558080699.png" width="300px">

**Giải quyết lỗi tràn màn hình**

Thêm một `SingleChildScrollView`

```dart
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
```

* Add `bmi_des()` function for BMI details
* Style app

<img src="./img/Screenshot_1558079875.png" width="300px">

***

### v1

<img src="./img/Screenshot_1558077515.png" width="300px">

## Reference

https://news.zing.vn/5-cong-thuc-don-gian-do-chi-so-bmi-post669580.html

## Images

<img src="./img/thumbnail-cong-thuc-tinh-chi-so-khoi-bmi-la-gi-1553137560.jpg" width="300px">

<img src="./img/090513_0313102013_minh_hoa_thang_phan_loai_bmi_2006.bmp" width="300px">

<img src="./img/chi-so-bmi-co-the.jpg" width="300px">

<img src="./img/8.jpg" width="300px">

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
