import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  DrawerList({Key key}) : super(key: key);

  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: DrawerHeader(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 80,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.black26,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 110,
                      child: Container(
                        child: Text('请登录'),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(color: Colors.deepOrange[200]),
              ),
            )
          ],
        ),
        ListTile(
          title: Text('用户设置'),
          leading: CircleAvatar(
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('分享'),
          leading: CircleAvatar(
            child: Icon(
              Icons.share,
              color: Colors.white,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('账号安全'),
          leading: CircleAvatar(
            child: Icon(
              Icons.fingerprint,
              color: Colors.white,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('语言选项'),
          leading: CircleAvatar(
            child: Icon(
              Icons.translate,
              color: Colors.white,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('通知设置'),
          leading: CircleAvatar(
            child: Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('检查更新'),
          leading: CircleAvatar(
            child: Icon(
              Icons.info,
              color: Colors.white,
            ),
          ),
        ),
        Divider(),
        ListTile(
          title: Text('联系客服'),
          leading: CircleAvatar(
            child: Icon(
              Icons.perm_identity,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
