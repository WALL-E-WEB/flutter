import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: PreferredSize(
        child: AppBar(
          elevation: 0,
          //  brightness: Brightness.dark, //最顶部白色字
          //  brightness: Brightness.light, //最顶部黑色字
          // value: SystemUiOverlayStyle.dark, // 未使用appbar 修改方式
          title: Image.asset('images/jd.png'),
          backgroundColor: Colors.red,
          actions: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.crop_free),
                Text(
                  '扫一扫',
                  style: TextStyle(fontSize: 6.0),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.sms),
                Text(
                  '消息',
                  style: TextStyle(fontSize: 6.0),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
            ),
          ],
        ),
        preferredSize: Size.fromHeight(44),
      ),
    );
  }

  // final String name;
  // HomeAppBar({Key key, @required this.name}) :super(key: key);
  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => getSize();

  getSize() {
    return new Size(100.0, 44.0);
  }
}
