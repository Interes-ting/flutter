import 'package:flutter/material.dart';
import './login_header.dart';
import './login_form.dart';
// import './login_footet.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户登录'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              LoginHeader(),
              LoginForm(),
              // LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
