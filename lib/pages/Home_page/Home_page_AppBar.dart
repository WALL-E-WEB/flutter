import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Home_page_Search.dart';
class HomeAppBar extends StatefulWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar>   with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return 
    // AnnotatedRegion(
      // value: SystemUiOverlayStyle.dark,
      // child: PreferredSize(
        // child:
         AppBar(
          elevation: 0,
          //  brightness: Brightness.dark, //最顶部白色字
          //  brightness: Brightness.light, //最顶部黑色字
          // value: SystemUiOverlayStyle.dark, // 未使用appbar 修改方式
          title: Image.asset(
            'images/jd.png',
            width: 25,
            height: 25,
          ),
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
  
          flexibleSpace:Container(
            child: HomeSearch(),
          ),
        );
        // preferredSize: Size.fromHeight(40),
      // ),
    // );
  }
  
}

// class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
//   // void initState(){
//   //   super.initState();
//   //   _tabController = new TabController(length: 2, vsync: this);
//   //     }
//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion(
//       value: SystemUiOverlayStyle.dark,
//       child: PreferredSize(
//         child: AppBar(
//           elevation: 0,
//           //  brightness: Brightness.dark, //最顶部白色字
//           //  brightness: Brightness.light, //最顶部黑色字
//           // value: SystemUiOverlayStyle.dark, // 未使用appbar 修改方式
//           title: Image.asset(
//             'images/jd.png',
//             width: 25,
//             height: 25,
//           ),
//           backgroundColor: Colors.red,
//           actions: <Widget>[
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.crop_free),
//                 Text(
//                   '扫一扫',
//                   style: TextStyle(fontSize: 6.0),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Icon(Icons.sms),
//                 Text(
//                   '消息',
//                   style: TextStyle(fontSize: 6.0),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
//             ),
//           ],
//           // bottom: PreferredSize(
//           //   child: HomeSearch(),
//           //   preferredSize: Size.fromHeight(44),
//           // ),
//           // TabBar(
//           //   controller: this._tabController,
//           //   tabs: <Widget>[
//           //     Tab(text: '事实上'),
//           //     Tab(text: '事实上'),
//           //   ],
//           // ),
//           // flexibleSpace: Container(
//           //   child: HomeSearch(),
//           // )),
//           flexibleSpace:Container(
//             child: HomeSearch(),
//           ),
//         ),
//         preferredSize: Size.fromHeight(40),
//       ),
//     );
//   }

//   // final String name;
//   // HomeAppBar({Key key, @required this.name}) :super(key: key);
//   @override
//   // ignore: todo
//   // TODO: implement preferredSize
//   Size get preferredSize => getSize();

//   getSize() {
//     return new Size(375.0, 70.0);
//   }
// }
