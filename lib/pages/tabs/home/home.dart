import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './swiper.dart';
import './gaidview.dart';
import './search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // 配置首页的顶部tab切换栏
    return DefaultTabController(
      length: 2, //顶部tab切换栏个数
      child: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
          centerTitle: true, //标题居中显示
          actions: <Widget>[
            //给顶部导航栏右边添加搜索图标按钮
            IconButton(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              onPressed: () {
                showSearch(
                  //路由跳转到搜索页面
                  context: context,
                  delegate: SearchBarDelegate(),
                );
              },
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Swipers(), //轮播图
            GridItem(), //九宫格图标图标布局
          ],
        ),
      ),
    );
  }
}
