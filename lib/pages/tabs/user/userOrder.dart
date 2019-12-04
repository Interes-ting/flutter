import 'package:flutter/material.dart';

class UserOrder extends StatefulWidget {
  @override
  _UserOrderState createState() => _UserOrderState();
}

class _UserOrderState extends State<UserOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      child: Card(
        elevation: 4, //阴影
        shape: const RoundedRectangleBorder(
          //形状 //修改圆角
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: GridView.count(
          // crossAxisSpacing: 10.0, //水平子 Widget 之间间距
          // mainAxisSpacing: 10.0, //垂直子 Widget 之间间距
          crossAxisCount: 4, //一行的 Widget 数量
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      IconData(0xe613, fontFamily: 'MyIcons'),
                      color: Colors.deepOrange,
                    ),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  Text(
                    '待付款',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      IconData(0xe601, fontFamily: 'MyIcons'),
                      color: Colors.deepOrange,
                    ),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  Text(
                    '待评价',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      IconData(0xe710, fontFamily: 'MyIcons'),
                      color: Colors.deepOrange,
                    ),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  Text(
                    '待评价',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.build,
                      color: Colors.deepOrange,
                    ),
                    iconSize: 40,
                    onPressed: () {},
                  ),
                  Text(
                    '售后',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
