import 'package:flutter/material.dart';
import 'package:modflutter/index.dart';

void main() {
  print('Sup Bro');
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KMUTNB',
      theme: ThemeData.dark(),
      home: Index(),
    );
  }
}
