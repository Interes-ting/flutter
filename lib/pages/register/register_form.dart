import 'package:flutter/material.dart';
import './register_phoneCode.dart';
import 'package:flutter/services.dart';
import './register_agreement.dart';
import './register_forget.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey _formKey = new GlobalKey<FormState>(); // 用来保存form表单
  TextEditingController _phoneController = new TextEditingController(); //手机号
  TextEditingController _pwdController = new TextEditingController(); //密码
  TextEditingController _repwdController = new TextEditingController(); //确认密码
  var phoneCode;
  bool pwdShow = false; //密码是否显示明文
  bool repwd = false;
  @override
  void initState() {
    phoneCode = PhoneCode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey, //设置globalKey，用于后面获取FormState
        // autovalidate: true, //是否开启自动校验
        child: Column(
          children: <Widget>[
            // 手机号
            Container(
              margin: EdgeInsets.only(top: 15),
              child: TextFormField(
                controller: _phoneController, //保存用户输入的用户名
                autofocus: true, //自动获得焦点
                decoration: InputDecoration(
                  hintText: "手机号",
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none, //隐藏下划线
                  fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                  filled: true,
                ),
                keyboardType: TextInputType.phone, //手机号
                inputFormatters: [
                  //只能输入11个数字
                  LengthLimitingTextInputFormatter(11)
                ],
                // 校验手机号
                validator: (value) {
                  RegExp phone = new RegExp(r'^\d{11}$'); //正则验证手机号
                  value = value.trim();
                  if (value.length == 0) {
                    return '手机号不能为空';
                  } else if (!phone.hasMatch(value)) {
                    return '请输入正确11位手机号码';
                  }
                  return null;
                },
              ),
            ),
            // 密码
            Container(
              margin: EdgeInsets.only(top: 15),
              child: TextFormField(
                controller: _pwdController, //保存用户输入的密码
                decoration: InputDecoration(
                  hintText: "密码",
                  fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                  filled: true,
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon:
                        Icon(pwdShow ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        pwdShow = !pwdShow;
                      });
                    },
                  ),
                  border: InputBorder.none, //隐藏下划线
                ),
                obscureText: !pwdShow, //是否隐藏密码
                // 校验密码
                validator: (value) {
                  RegExp phone = new RegExp(
                      r'(?=.*([a-zA-Z].*))(?=.*[0-9].*)[a-zA-Z0-9-*/+.~!@#$%^&*()]{6,20}$'); //至少包含数字跟字母，可以有字符
                  value = value.trim();
                  if (value.length == 0) {
                    return '密码不能为空';
                  } else if (!phone.hasMatch(value)) {
                    return '6-20位数字或字母，符号';
                  }
                  return null;
                },
              ),
            ),
            // 确认密码
            Container(
              margin: EdgeInsets.only(top: 15),
              child: TextFormField(
                controller: _repwdController, //保存用户再次输入的密码
                decoration: InputDecoration(
                  hintText: "确认密码",
                  fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                  filled: true,
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon:
                        Icon(pwdShow ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        pwdShow = !pwdShow;
                      });
                    },
                  ),
                  border: InputBorder.none, //隐藏下划线
                ),
                obscureText: !pwdShow, //是否隐藏密码
                // 校验密码
                validator: (value) {
                  RegExp phone = new RegExp(
                      r'(?=.*([a-zA-Z].*))(?=.*[0-9].*)[a-zA-Z0-9-*/+.~!@#$%^&*()]{6,20}$'); //至少包含数字跟字母，可以有字符
                  value = value.trim();
                  String password = this._pwdController.text;
                  if (value.length == 0) {
                    return '密码不能为空';
                  } else if (!phone.hasMatch(value)) {
                    return '6-20位数字或字母，符号';
                  } else if (value != password) {
                    return '两次密码不一致，请重新输入';
                  }
                  return null;
                },
              ),
            ),
            phoneCode, // 验证码
            AgreementPage(), //用户协议
            // 注册按钮
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      padding: EdgeInsets.all(15.0),
                      child: Text('注册', style: TextStyle(fontSize: 20)),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () {
                        if ((_formKey.currentState as FormState).validate()) {
                          //验证通过提交数据

                          // print(this.mController.text);
                          print({
                            '手机号': '${_phoneController.text}',
                            '密码': '${_pwdController.text}',
                            '确认密码': '${_repwdController.text}',
                            '验证码': '${phoneCode.verifyCode}'
                          }); //获取输入框的值

                          // Navigator.pushNamed(context, '/user');
                          // 想在这里拿到注册码的数据
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            //登录/忘记密码
            ForgetPwd(),
          ],
        ),
      ),
    );
  }
}
