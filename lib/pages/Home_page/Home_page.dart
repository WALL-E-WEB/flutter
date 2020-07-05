import 'package:flutter/material.dart';
import './Home_page_AppBar.dart';
import './Home_page_BannerAndSearch.dart';
import './Home_page_Search.dart';

class HomePage extends StatefulWidget implements PreferredSizeWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => getSize();

  getSize() {
    return new Size(375.0, 100.0);
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    print('初始化 数据...');
    super.initState();
    _tabController = new TabController(
        vsync: this, //固定写法
        length: 13 //指定tab长度
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Expanded(
          flex: 1,
          child: AppBar(
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

            flexibleSpace: Container(
              child: HomeSearch(),
            ),
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,

              //是否可以滚动

              //选中的颜色
              indicatorColor: Colors.blue,
              //未选中的颜色
              unselectedLabelColor: Colors.black,
              //文字颜色
              labelColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: "热门",
                ),
                Tab(
                  text: "推荐",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
                Tab(
                  text: "优选",
                ),
              ],
            ),
          ),
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
           ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
           ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
           ListView(
            children: <Widget>[
              HomeBannerAndSearch(),
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第一个tab"),
              ),
              ListTile(
                title: Text("第一个tab"),
              ),
              ListTile(
                title: Text("第一个tab"),
              ),
              ListTile(
                title: Text("第一个tab"),
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                title: Text("第一个tab"),
              ),
              ListTile(
                title: Text("第一个tab"),
              ),
              ListTile(
                title: Text("第一个tab"),
              ),
              ListTile(
                title: Text("第一个tab"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
