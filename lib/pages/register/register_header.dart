import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        '欢迎来到轻松搬家',
        style: TextStyle(fontSize: 30, color: Colors.deepOrange),
      ),
    );
  }
}
