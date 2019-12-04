import 'package:flutter/material.dart';

class UserHeader extends StatefulWidget {
  @override
  _UserHeaderState createState() => _UserHeaderState();
}

class _UserHeaderState extends State<UserHeader> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5),
        height: 150,
        child: Card(
          elevation: 5, //阴影
          shape: const RoundedRectangleBorder(
            //形状 //修改圆角
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                  width: 100,
                  height: 100,
                  child: CircleAvatar(
                    backgroundColor: Colors.white24,
                    child: IconButton(
                      iconSize: 100,
                      onPressed: () {},
                      icon: Image.network(
                        'http://www.sucaijishi.com/uploadfile/2018/0508/20180508023717550.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //用户名
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        '用户名',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    //id
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: RichText(
                        text: TextSpan(
                          text: 'ID: ',
                          style: TextStyle(color: Colors.black38, fontSize: 16),
                          children: [
                            TextSpan(
                              text: '123456',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //手机号
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: RichText(
                        text: TextSpan(
                          text: '手机号: ',
                          style: TextStyle(color: Colors.black38, fontSize: 16),
                          children: [
                            TextSpan(
                              text: '12345678945',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   top: 40,
              //   right: 15,
              //   child: IconButton(
              //     icon: Icon(
              //       Icons.keyboard_arrow_right,
              //       color: Colors.black38,
              //       size: 30,
              //     ),
              //     onPressed: () {
              //       // 跳转到登录注册页面
              //       Navigator.pushNamed(context, '/login');
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, '/login');
      },
    );
  }
}
