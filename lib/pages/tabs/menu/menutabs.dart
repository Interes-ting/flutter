import 'package:flutter/material.dart';

class MenuTabs extends StatefulWidget {
  MenuTabs({Key key}) : super(key: key);

  @override
  _MenuTabsState createState() => _MenuTabsState();
}

class _MenuTabsState extends State<MenuTabs>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('菜单'),
        bottom: TabBar(
          // 配置参数
          isScrollable: false,
          controller: this._tabController,
          tabs: <Widget>[
            Tab(text: '热门'),
            Tab(text: '推荐'),
            Tab(text: '其他'),
          ],
        ),
      ),
      body: TabBarView(
        // 配置参数
        controller: this._tabController,
        children: <Widget>[
          Container(
            child: Text('热门'),
          ),
          Container(
            child: Text('推荐'),
          ),
          Container(
            child: Text('其他'),
          ),
        ],
      ),
    );
  }
}
