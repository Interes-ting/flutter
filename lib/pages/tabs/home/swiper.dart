import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//轮播组件

class Swipers extends StatefulWidget {
  Swipers({Key key}) : super(key: key);

  @override
  _SwipersState createState() => _SwipersState();
}

class _SwipersState extends State<Swipers> {
  //轮播图数据
  List<Map> imageLits = [
    {'url': 'http://pic1.win4000.com/wallpaper/3/586f10c4b4a46.jpg'},
    {'url': 'http://pic1.win4000.com/wallpaper/1/556404f1a9150.jpg'},
    {'url': 'http://pic1.win4000.com/wallpaper/3/586f10c4b4a46.jpg'},
    {'url': 'http://pic1.win4000.com/wallpaper/3/586f10c4b4a46.jpg'},
    {'url': 'http://pic1.win4000.com/wallpaper/1/556404f1a9150.jpg'},
    {'url': 'http://pic1.win4000.com/wallpaper/3/586f10c4b4a46.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: AspectRatio(
        aspectRatio: 16 / 9, //设置容器不变性，适配所有屏幕
        child: Swiper(
          itemBuilder: (BuildContext, int index) {
            return Image.network(
              imageLits[index]['url'],
              fit: BoxFit.fill,
            );
          },
          itemCount: imageLits.length, //轮播图个数
          pagination: SwiperPagination(), //分页器
          loop: true, //无限循环
          autoplay: true, //自动轮播
        ),
      ),
    );
  }
}
