import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class PhoneCode extends StatefulWidget {
  String verifyCode;
  @override
  _PhoneCodeState createState() => _PhoneCodeState();
}

class _PhoneCodeState extends State<PhoneCode> {
  bool isButtonEnable = true; //按钮状态 是否可点击
  String buttonText = '发送验证码'; //初始文本
  int count = 60; //初始倒计时时间
  Timer timer; //倒计时的计时器
  TextEditingController mController = TextEditingController();

  void _buttonClickListen() {
    setState(() {
      if (isButtonEnable) {
        //当按钮可点击时
        isButtonEnable = false; //按钮状态标记
        _initTimer();

        return null; //返回null按钮禁止点击
      } else {
        //当按钮不可点击时
//  debugPrint('false');
        return null; //返回null按钮禁止点击
      }
    });
  }

  void _initTimer() {
    timer = new Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) {
        count--;
        setState(
          () {
            if (count == 0) {
              timer.cancel(); //倒计时结束取消定时器
              isButtonEnable = true; //按钮可点击
              count = 60; //重置时间
              buttonText = '发送验证码'; //重置按钮文本
            } else {
              buttonText = '重新发送($count)'; //更新文本内容
            }
          },
        );
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel(); //销毁计时器
    timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextFormField(
        maxLines: 1,
        onSaved: (value) {},
        controller: mController,
        textAlign: TextAlign.left,
        inputFormatters: [
          WhitelistingTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(6)
        ],
        onChanged: (value) {
          widget.verifyCode = value;
        },
        //校验密码
        validator: (value) {
          return value.trim().length == 6 ? null : "验证码为6位数字";
        },
        decoration: InputDecoration(
          hintText: ('填写验证码'),
          border: InputBorder.none, //隐藏下划线
          prefixIcon: Icon(Icons.phone_iphone),
          fillColor: Color.fromRGBO(220, 223, 230, 0.5),
          filled: true,
          suffixIcon: FlatButton(
            disabledColor: Colors.grey.withOpacity(0.1), //按钮禁用时的颜色
            disabledTextColor: Colors.white, //按钮禁用时的文本颜色
            textColor: isButtonEnable ? Colors.white : Colors.white, //文本颜色
            color: isButtonEnable ? Colors.deepOrange : Colors.grey, //按钮的颜色
            splashColor: isButtonEnable
                ? Colors.white.withOpacity(0.1)
                : Colors.transparent,
            // shape: StadiumBorder(side: BorderSide.none),
            onPressed: () {
              setState(() {
                _buttonClickListen();
              });
            },
            child: Text(
              '$buttonText',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
