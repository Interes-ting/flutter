import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; //ios风格
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './home/home.dart';
import './menu/menu.dart';
import './message/message.dart';
import './order/order.dart';
import './user/user.dart';
import '../../widget/drawer.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<Widget> pagelist = [
    HomePage(),
    MenuPage(),
    OrderPage(),
    MessagePage(),
    UserPage()
  ];
  int _currentIndex = 0;

  //重写继承的initState方法
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagelist[_currentIndex],
      //中间凸起按钮部分
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 5),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              this._currentIndex = 2;
            });
          },
          child: Icon(
            IconData(0xe63d, fontFamily: 'MyIcons'),
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked, //让凸起按钮在底部中间显示
      bottomNavigationBar: BottomNavigationBar(
        //底部导航栏的创建需要对应的功能标签作为子项，这里我就写了3个，每个子项包含一个图标和一个title。
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: new Text(
              '首页',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            title: new Text(
              '菜单',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
            ),
            title: new Text(
              '抢单',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail_outline,
            ),
            title: new Text(
              '消息',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            title: new Text(
              '我的',
            ),
          ),
        ],
        //这是底部导航栏自带的位标属性，表示底部导航栏当前处于哪个导航标签。给他一个初始值0，也就是默认第一个标签页面。
        currentIndex: _currentIndex,
        //这是点击属性，会执行带有一个int值的回调函数，这个int值是系统自动返回的你点击的那个标签的位标
        onTap: (int i) {
          //进行状态更新，将系统返回的你点击的标签位标赋予当前位标属性，告诉系统当前要显示的导航标签被用户改变了。
          setState(() {
            _currentIndex = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: DrawerList(),
      ),
    );
  }
}
