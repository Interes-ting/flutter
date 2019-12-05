import 'package:flutter/material.dart';
import '../../widget/Dialog.dart';
import 'package:flutter/services.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // 用来保存form表单
  GlobalKey _formKey = new GlobalKey<FormState>();
  // 用来保存用户名和密码
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  bool pwdShow = false; //密码是否显示明文

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          // autovalidate: true, //是否开启自动校验
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  controller: _unameController, //保存用户输入的用户名
                  autofocus: true, //自动获得焦点
                  decoration: InputDecoration(
                    hintText: "用户名/手机号",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none, //隐藏下划线
                  ),
                  keyboardType: TextInputType.phone, //手机号
                  inputFormatters: [
                    //只能输入11个数字
                    LengthLimitingTextInputFormatter(11)
                  ],
                  // 校验用户名
                  validator: (value) {
                    RegExp phone = new RegExp(r'^\d{11}$'); //正则验证手机号
                    value = value.trim();
                    if (value.length == 0) {
                      return '                用户名不能为空';
                    } else if (!phone.hasMatch(value)) {
                      return '                请输入正确11位手机号码或者用户名';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextFormField(
                  //保存用户输入的密码
                  controller: _pwdController,
                  decoration: InputDecoration(
                    hintText: "密码区分大小写",
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                          pwdShow ? Icons.visibility : Icons.visibility_off),
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
                      return '                密码不能为空';
                    } else if (!phone.hasMatch(value)) {
                      return '                6-20位数字或字母，符号';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text('登录', style: TextStyle(fontSize: 20)),
                        color: Colors.deepOrange,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                            // print(this._unameController.text);
                            // 如果验证不通过弹出弹窗
                            if (this._unameController.text !=
                                17764166568.toString()) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (_) {
                                  return CustomDialog(
                                    title: '提示',
                                    content: '用户名不正确，请重新输入',
                                    isCancel: false,
                                  );
                                },
                              );
                            } else {
                              // 如果用户存在，就跳转到用户界面
                              Navigator.pushNamed(context, '/user');
                            }
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, //子组件在主轴的排列方式为两端对齐
                  children: <Widget>[
                    GestureDetector(
                      child: Text(
                        '注册',
                        style:
                            TextStyle(fontSize: 16, color: Colors.deepOrange),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/register');
                      },
                    ),
                    GestureDetector(
                      child: Text(
                        '忘记密码？',
                        style:
                            TextStyle(fontSize: 16, color: Colors.deepOrange),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
