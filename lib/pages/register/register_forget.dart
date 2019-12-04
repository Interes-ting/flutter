import 'package:flutter/material.dart';

class ForgetPwd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, //子组件在主轴的排列方式为两端对齐
        children: <Widget>[
          GestureDetector(
            child: Text(
              '登录',
              style: TextStyle(fontSize: 16, color: Colors.deepOrange),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/login');
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
    );
  }
}
