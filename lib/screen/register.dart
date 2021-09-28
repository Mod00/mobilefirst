import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modflutter/backend/database.dart';
import 'package:modflutter/config/constant.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name, surname, email, password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                txtName(),
                txtSurname(),
                txtEmail(),
                txtpassword(),
                btnSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtName() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        style: TextStyle(
          color: sColor,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          labelText: "Name: ",
          icon: Icon(Icons.account_balance_wallet),
          hintText: 'Input your name',
        ),
        validator: (value) {
          if (value!.length < 4) {
            return 'กรุณากรอกข้อมูลมากกว่า 4 ตัว';
          }
        },
        onSaved: (value) {
          name = value!.trim();
        },
      ),
    );
  }

  Widget txtSurname() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
          style: TextStyle(
            color: sColor,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Surname: ",
            icon: Icon(Icons.account_circle_sharp),
            hintText: 'Input your Surname',
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'กรุณากรอกข้อมูล';
            } else if (value.length < 3) {
              return 'กรุณากรอกข้อมูลมากกว่า 3 ตัว';
            }
          },
          onSaved: (value) {
            surname = value!.trim();
          }),
    );
  }

  Widget txtEmail() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
          style: TextStyle(
            color: sColor,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Email: ",
            icon: Icon(Icons.email),
            hintText: 'Input your email',
          ),
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (!(value!.contains('@')) && (value.contains('.'))) {
              return 'กรุณากรอกอีเมล์ให้ถูกต้อง';
            }
          },
          onSaved: (value) {
            email = value!.trim();
          }),
    );
  }

  Widget txtpassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
          style: TextStyle(
            color: sColor,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "password: ",
            icon: Icon(Icons.password),
            hintText: 'Input your password',
          ),
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          onSaved: (value) {
            password = value!.trim();
          }),
    );
  }

  Widget btnSubmit() {
    return ElevatedButton(
        child: Text('Submit'),
        onPressed: () {
          if (formkey.currentState!.validate()) {
            print('สมัครเรียบร้อย');
            formkey.currentState!.save();
            print("ชื่อ: $name");
            print("นามสกุล: $surname");
            print("Email: $email");
            print("Password: $password");
          }
          var local = LocalDB();
          local.Register(name, surname, email, password);
          Navigator.pushNamed(context, 'login');
        });
  }
}
