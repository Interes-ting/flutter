import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  GridItem({Key key}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  //储存图片数据
  List<Map> imgList = [
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h10.png',
      'title': '删除'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h11.png',
      'title': '设置'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h13.png',
      'title': '搜索'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h14.png',
      'title': '图片'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h17.png',
      'title': '消息'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h3.png',
      'title': '同城'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h5.png',
      'title': '菜单'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h19.png',
      'title': '通讯录'
    },
    {
      'url': 'http://pics.sc.chinaz.com/Files/pic/icons128/6513/h17.png',
      'title': '消息'
    },
  ];
  List list = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //横轴子元素的数量
          // crossAxisSpacing: 5, //横轴子元素的数量
          // mainAxisSpacing: 5, //横轴子元素的数量
          childAspectRatio: 1.7, //子元素在横轴长度和主轴长度的比例
        ),
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              print('111');
            },
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: Image.network(
                    imgList[index]['url'],
                    fit: BoxFit.fill,
                  ),
                ),
                Text(imgList[index]['title'])
              ],
            ),
          );
        },
      ),
    );
  }
}
