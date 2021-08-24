import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CED'),
        ),
        body: Container(
          color: Colors.redAccent[100],
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: Text(
                  'Data 1',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  'Data 2',
                  style: TextStyle(fontSize: 48),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
