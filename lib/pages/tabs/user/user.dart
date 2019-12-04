import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './userHeader.dart';
import './userOrder.dart';
// import './userSetting.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('用户中心'),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromRGBO(233, 233, 235, 1),
        child: ListView(
          children: <Widget>[
            UserHeader(), //头部头像区域
            UserOrder(), //用户订单列表
            Container(
              margin: EdgeInsets.all(5),
              child: Card(
                elevation: 4, //阴影
                shape: const RoundedRectangleBorder(
                  //形状 //修改圆角
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('地址管理'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('地址管理'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('地址管理'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('地址管理'),
                      onTap: () {},
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('地址管理'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.place),
                      title: Text('地址管理'),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {},
                    ),
                    Divider(),
                  ],
                ),
              ),
            )
            // UserSetting(), //用户设置
          ],
        ),
      ),
    );
  }
}
