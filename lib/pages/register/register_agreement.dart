import 'package:flutter/material.dart';

class AgreementPage extends StatefulWidget {
  @override
  _AgreementPageState createState() => _AgreementPageState();
}

class _AgreementPageState extends State<AgreementPage> {
  bool _checkboxSelected = true; //维护复选框状态
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red, //选中时的颜色
            onChanged: (value) {
              setState(
                () {
                  _checkboxSelected = value;
                },
              );
            },
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '我同意'),
                TextSpan(
                    text: '《用户协议》', style: TextStyle(color: Colors.deepOrange)),
              ],
            ),
          ),
          // TextSpan(),
        ],
      ),
    );
  }
}
