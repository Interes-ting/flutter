import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
// import './menutabs.dart';
import './menudata.dart';

class MenuPage extends StatefulWidget {
  final arguments;
  MenuPage({this.arguments});
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // 自定义方法
  var menulitsdata;

  ListView _getData() {
    menulitsdata = List<Widget>();
    menuData.forEach((value) {
      menulitsdata.add(
        Dismissible(
          key: Key(value['id'].toString()),
          onDismissed: (direction) {
            // 删除后刷新列表，以达到真正的删除
            setState(() {
              menuData.removeAt(value);
            });
          },
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/list', arguments: {
                'id': value['id'],
                'name': value['name'],
                'phone': value['phone'],
                'sex': value['sex'],
                'email': value['email'],
                'age': value['age'],
                'address': value['address']
              }).then(
                (data) {
                  //接受返回的参数
                  setState(() {
                    listdata = data as Map;
                    String id = listdata['id'];
                    String name = listdata['name'];
                    String phone = listdata['phone'];
                    String sex = listdata['sex'];
                    String email = listdata['email'];
                    String age = listdata['age'];
                    String address = listdata['address'];
                    menuData.forEach((item) {
                      if (id == item['id']) {
                        item['name'] = name;
                        item['phone'] = phone;
                        item['sex'] = sex;
                        item['email'] = email;
                        item['age'] = age;
                        item['address'] = address;
                      }
                    });
                    listView = _getData();
                  });
                },
              );
            },
            child: ExpansionTile(
              title: Text('ID：${value['id']} , 姓名：${value['name']}'),
              children: <Widget>[
                ListTile(
                  title: Text('地址：${value['address']}'),
                ),
                ListTile(
                  title: Text('电话：${value['phone']}'),
                ),
                ListTile(
                  title: Text('邮箱：${value['email']}'),
                ),
                ListTile(
                  title: Text('年龄：${value['age']}'),
                ),
              ],
            ),
          ),
          background: Container(
            alignment: Alignment.center,
            child: Icon(Icons.delete, color: Colors.white),
            color: Colors.red,
          ),
        ),
      );
    });
    return ListView(
      children: menulitsdata,
    );
  }

  Map itemsdata;
  Map listdata;
  List list;
  ListView listView;
  @override
  void initState() {
    listView = _getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('菜单'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.add, color: Colors.white),
            label: Text(
              "新增",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/menuadd').then((data) {
                print('返回回来的参数:$data');
                setState(() {
                  itemsdata = data as Map;
                  String id =
                      itemsdata['id'] + (menuData.length + 2).toString();
                  String name = itemsdata['name'];
                  String phone = itemsdata['phone'];
                  String sex = itemsdata['sex'];
                  String email = itemsdata['email'];
                  String age = itemsdata['age'];
                  String address = itemsdata['address'];
                  menuData.add({
                    'id': id,
                    'name': name,
                    'phone': phone,
                    'sex': sex,
                    'email': email,
                    'age': age,
                    'address': address
                  });
                  listView = _getData();
                });
              });
            },
          ),
        ],
      ),
      body: Container(
        child: listView,
      ),
    );
  }
}
