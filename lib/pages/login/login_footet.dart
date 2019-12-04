import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 350,
          height: 20,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, //子组件在主轴的排列方式为两端对齐
            children: <Widget>[
              GestureDetector(
                child: Text(
                  '注册',
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
              ),
              GestureDetector(
                child: Text(
                  '忘记密码？',
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
