import 'package:flutter/material.dart';
import 'package:modflutter/config/constant.dart';
import 'package:modflutter/index.dart';
import 'package:modflutter/screen/Image.dart';
import 'package:modflutter/screen/dashboard.dart';
import 'package:modflutter/screen/login.dart';
import 'package:modflutter/screen/register.dart';
import 'package:modflutter/screen/video.dart';
import 'screen/location.dart';

void main() {
  print('Sup Bro');
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
        'dashboard': (context) => Dashboard(),
        'video': (context) => Video(),
        'Image': (context) => ImagePro(),
        'location': (context) => Location(),
      },
      home: Index(),
    );
  }
}
