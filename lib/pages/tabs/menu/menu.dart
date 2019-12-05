import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
// import './menutabs.dart';
import './menudata.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // 自定义方法
  // List<Widget> _getList() {
  //   var list = menuData.map((value) {
  //     return Container(
  //       child: ExpansionTile(
  //         title: Text.rich(
  //           TextSpan(
  //             children: [
  //               TextSpan(text: 'ID: '),
  //               TextSpan(text: '${value['id']}     '),
  //               TextSpan(text: '姓名: '),
  //               TextSpan(text: '${value['name']}'),
  //             ],
  //           ),
  //         ),
  //         backgroundColor: Colors.deepOrange[100],
  //         initiallyExpanded: false, //默认是否展开
  //         children: <Widget>[
  //           ListTile(
  //             title: Text('地址：' + value['address']),
  //           ),
  //           ListTile(
  //             title: Text('电话：' + value['phone']),
  //           ),
  //           ListTile(
  //             title: Text('邮箱：' + value['email']),
  //           ),
  //           ListTile(
  //             title: Text('年龄：' + value['age']),
  //           ),
  //         ],
  //       ),
  //     );
  //   }).toList();
  //   return list;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('菜单'),
        centerTitle: true, //标题居中显示
      ),
      body: Container(
        // child: ListView(
        //   children: this._getList(),
        // ),
        child: ListView.builder(
          itemCount: menuData.length,
          itemBuilder: (BuildContext context, int index) {
            final item = menuData[index];
            return Dismissible(
              key: Key(item.toString()),
              onDismissed: (direction) {
                // 删除后刷新列表，以达到真正的删除
                setState(() {
                  menuData.removeAt(item);
                });
              },
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/list', arguments: {
                    'id': item['id'],
                    'name': item['name'],
                    'address': item['address'],
                    'phone': item['phone'],
                    'sex': item['sex'],
                    'email': item['email'],
                    'age': item['age']
                  }).then(
                    (data) {
                      //接受返回的参数
                      print(data);
                    },
                  );
                },
                child: ExpansionTile(
                  title: Text('ID：${item['id']} , 姓名：${item['name']}'),
                  children: <Widget>[
                    ListTile(
                      title: Text('地址：${item['address']}'),
                    ),
                    ListTile(
                      title: Text('电话：${item['phone']}'),
                    ),
                    ListTile(
                      title: Text('邮箱：${item['email']}'),
                    ),
                    ListTile(
                      title: Text('年龄：${item['age']}'),
                    ),
                  ],
                ),
              ),
              background: Container(
                alignment: Alignment.center,
                child: Icon(Icons.delete, color: Colors.white),
                color: Colors.red,
              ),
            );
          },
        ),
      ),
    );
  }
}
