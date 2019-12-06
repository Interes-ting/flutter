import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuAdd extends StatefulWidget {
  @override
  _MenuAddState createState() => _MenuAddState();
}

class _MenuAddState extends State<MenuAdd> {
  GlobalKey _formKey = new GlobalKey<FormState>();

  TextEditingController _idController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _addressController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _ageController = new TextEditingController();
  String sex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新增页面'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // 姓名
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '姓名:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _nameController, //保存用户输入的用户名
                          autofocus: true, //自动获得焦点
                          decoration: InputDecoration(
                            border: InputBorder.none, //隐藏下划线
                            fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                            filled: true,
                          ),
                          keyboardType: TextInputType.phone, //手机号
                          // 校验手机号
                          validator: (val) {
                            val = val.trim();
                            return val.trim().length == 0 ? "请填写姓名" : null;
                          },
                          onChanged: (val) {
                            _nameController.text = val;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //地址
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '地址:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _addressController,
                          decoration: new InputDecoration(
                            border: InputBorder.none, //隐藏下划线
                            fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                            filled: true,
                          ),
                          onChanged: (val) {
                            _addressController.text = val;
                          },
                          validator: (val) {
                            val = val.trim();
                            return val.trim().length == 0 ? "请填写地址" : null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // 手机号
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '电话:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _phoneController,
                          decoration: new InputDecoration(
                            border: InputBorder.none, //隐藏下划线
                            fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                            filled: true,
                          ),
                          keyboardType: TextInputType.phone, //数字键盘
                          onChanged: (val) {
                            _phoneController.text = val;
                          },
                          validator: (value) {
                            RegExp phone = new RegExp(r'^\d{11}$'); //正则验证手机号
                            value = value.trim();
                            if (value.length == 0) {
                              return '请填写手机号';
                            } else if (!phone.hasMatch(value)) {
                              return '请输入正确11位手机号码';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //邮箱
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '邮箱:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _emailController,
                          decoration: new InputDecoration(
                            border: InputBorder.none, //隐藏下划线
                            fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                            filled: true,
                          ),
                          onChanged: (val) {
                            _emailController.text = val;
                          },
                          validator: (value) {
                            RegExp phone = new RegExp(
                                r'^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$'); //邮箱
                            value = value.trim();
                            if (value.length == 0) {
                              return '请填写邮箱';
                            } else if (!phone.hasMatch(value)) {
                              return '请输入正确邮箱格式';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // 年龄
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '年龄:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _ageController,
                          decoration: new InputDecoration(
                            border: InputBorder.none, //隐藏下划线
                            fillColor: Color.fromRGBO(220, 223, 230, 0.5),
                            filled: true,
                          ),
                          onChanged: (val) {
                            _ageController.text = val;
                          },
                          keyboardType: TextInputType.phone, //数字键盘
                          validator: (val) {
                            val = val.trim();
                            return val.trim().length == 0 ? "请填写年龄" : null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // 性别
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          '性别:',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Flexible(
                        child: RadioListTile<String>(
                          value: 1.toString(),
                          title: Text('男'),
                          groupValue: sex,
                          onChanged: (value) {
                            setState(() {
                              sex = value;
                            });
                          },
                        ),
                      ),
                      Flexible(
                        child: RadioListTile<String>(
                          value: 0.toString(),
                          title: Text('女'),
                          groupValue: sex,
                          onChanged: (value) {
                            setState(() {
                              sex = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // 发送取消按钮
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton.icon(
                          icon: Icon(Icons.done),
                          label: Text('发送', style: TextStyle(fontSize: 20)),
                          color: Colors.deepOrange,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          onPressed: () {
                            if ((_formKey.currentState as FormState)
                                .validate()) {
                              //验证通过提交数据
                              Map itemData = {};
                              itemData.addAll({'id': _idController.text});
                              itemData.addAll({'phone': _phoneController.text});
                              itemData.addAll({'sex': sex});
                              itemData.addAll({'age': _ageController.text});
                              itemData.addAll({'name': _nameController.text});
                              itemData
                                  .addAll({'address': _addressController.text});
                              itemData.addAll({'email': _emailController.text});
                              //关闭当前页并返回参数给上一页
                              // print(itemData);
                              Navigator.of(context).pop(itemData);
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: OutlineButton(
                          child: Text('取消', style: TextStyle(fontSize: 20)),
                          color: Colors.deepOrange,
                          textColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
