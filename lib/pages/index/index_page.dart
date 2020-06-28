import 'package:flutter/material.dart';
import './index_page_navbar.dart';

import '../Classify_page/Classify_page.dart';
import '../Home_page/Home_page.dart';
import '../My_page/My_page.dart';
import '../Shop_page/Shop_page.dart';
import '../Discover_page/Discover_page.dart';

final List pageList = [
  HomePage(),
  ClassifyPage(),
  DiscoverPage(),
  ShopPage(),
  MyPage()
];

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int currentIndex = 0;
  void changeIndex(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Flutter'),
          ),
          bottomNavigationBar: NavBottomBar.returnBarConfig(
              currentIndex: this.currentIndex, tabFun: this.changeIndex),
          body: pageList[currentIndex]),
      debugShowCheckedModeBanner: false,
    );
  }
  // ---
}
