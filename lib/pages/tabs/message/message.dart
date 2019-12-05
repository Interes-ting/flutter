import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('消息'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Align(
                                  child: Text('2019-12-4',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Align(
                                  child: Text('星期三',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                                '严酷的旱季里，降雨量比往年降低了25%。北部的桑布鲁保护区，皲裂的大地上，随处可见饿得骨瘦如柴、奄奄一息的动物，还有已经风干的尸体…'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Align(
                                  child: Text('2019-12-4',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Align(
                                  child: Text('星期三',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                                '严酷的旱季里，降雨量比往年降低了25%。北部的桑布鲁保护区，皲裂的大地上，随处可见饿得骨瘦如柴、奄奄一息的动物，还有已经风干的尸体…'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Align(
                                  child: Text('2019-12-4',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Align(
                                  child: Text('星期三',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                                '严酷的旱季里，降雨量比往年降低了25%。北部的桑布鲁保护区，皲裂的大地上，随处可见饿得骨瘦如柴、奄奄一息的动物，还有已经风干的尸体…'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Align(
                                  child: Text('2019-12-4',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                                Align(
                                  child: Text('星期三',
                                      style: TextStyle(color: Colors.black38)),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                                '严酷的旱季里，降雨量比往年降低了25%。北部的桑布鲁保护区，皲裂的大地上，随处可见饿得骨瘦如柴、奄奄一息的动物，还有已经风干的尸体…'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
