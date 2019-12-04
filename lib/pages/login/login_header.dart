import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      child: Text(
        '欢迎来到轻松搬家',
        style: TextStyle(fontSize: 30, color: Colors.deepOrange),
      ),
    );
  }
}
