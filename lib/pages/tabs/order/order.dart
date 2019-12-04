import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart'; //上拉加载
import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List _dataSources = [];
  // 声明上拉加载下拉刷新的key

  //网络请求数据
  // _requestData() async {
  //   // //服务器地址
  //   // var serverUrl = "http://sdjbgwc.miiteen.com/api/gwc/taskapi/getlists";

  //   // //处理网络请求下来的数据
  //   // var response = await Dio().get(serverUrl);
  //   // if (response.statusCode == 200) {
  //   //   setState(() {
  //   //     this._dataSources = jsonDecode(response.data)["data"];
  //   //     // print("888,${this._dataSources}");
  //   //   });
  //   // } else {
  //   //   print("Request failed with status: ${response.statusCode}.");
  //   // }
  // }

  @override
  void initState() {
    super.initState();
    //页面一加载就执行网络请求
    // this._requestData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('抢单'),
        centerTitle: true,
      ),
      body: Container(
        /**
       * 这里通过一个三目来判断数据是否请求成功
       * 在数据请求成功之前，页面展示“加载中”
       * 数据请求成功之后，就加在ListView列表
       */
        child: EasyRefresh(
          child: this._dataSources.length == 0
              ? Text("加载中,请等待......")
              : ListView(
                  children: this._dataSources.map((value) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Text('姓名:' + value['recordPer']),
                              ),
                              ListTile(
                                title:
                                    Text('所属部门:' + value['sysDepartmentName']),
                                subtitle: Text(
                                  '车辆用途:' + value['remark'],
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              ListTile(
                                title: Text('车牌号:' + value['carNo']),
                                subtitle: Text(
                                  '乘车时间:' +
                                      value['outDate'].toString() +
                                      '-----------' +
                                      value['willComeTime'].toString(),
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        )
                      ],
                    );
                  }).toList(),
                ),
          onRefresh: () async {},
          onLoad: () async {
            //服务器地址
            var serverUrl =
                "http://sdjbgwc.miiteen.com/api/gwc/taskapi/getlists";

            //处理网络请求下来的数据
            var response = await Dio().get(serverUrl);
            if (response.statusCode == 200) {
              setState(() {
                this._dataSources = jsonDecode(response.data)["data"];
                // print("888,${this._dataSources}");
              });
            } else {
              print("Request failed with status: ${response.statusCode}.");
            }
          },
        ),
      ),
    );
  }
}
