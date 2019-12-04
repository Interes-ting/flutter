import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    // 在页面初始化的时候实例化 _tabController
    _tabController = new TabController(
      vsync: this,
      length: 3, //tabbar的个数
    );
    // 监听tab切换
    _tabController.addListener(
      () {
        print(_tabController.index);
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('菜单'),
          bottom: TabBar(
            // 配置参数
            controller: this._tabController,
            tabs: <Widget>[
              Tab(
                text: '热门',
              ),
              Tab(text: '推荐'),
              Tab(text: '其他')
            ],
          ),
        ),
        body: TabBarView(
          // 配置参数
          controller: this._tabController,
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                  Text('热门'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text('推荐推荐'),
                  Text('推荐推荐'),
                  Text('推荐推荐'),
                  Text('推荐推荐'),
                  Text('推荐推荐'),
                  Text('推荐推荐'),
                  Text('推荐推荐'),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Text('其他'),
                  Text('其他'),
                  Text('其他'),
                  Text('其他'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
