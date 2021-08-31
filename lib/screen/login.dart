import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        color: Colors.deepOrange[100],
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1629757349708-a9abe5d3d354?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80'),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "KMUTNB Login",
              style: TextStyle(
                fontSize: 32,
                color: Colors.deepOrange[500],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
