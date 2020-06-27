import 'package:flutter/material.dart';


import '../Classify_page/Classify_page.dart';
import '../Home_page/Home_page.dart';

final List pageList = [
  ClassifyPage(),
  HomePage(),
];



class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  Color _bottombarcolor = Color(0xFF666666);
  Color _selectcolor = Color(0xFFF63515);
  int currentIndex = 1;
  @override
  void didChangeDependencies() {
    print('-------------didChangeDependencies------------');
    print(currentIndex);
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    
  }
  @override
  Widget build(BuildContext context) {
    print('---------build--------------');
    print(context);

    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Welcome to Flutster'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: this.currentIndex,
            onTap: (int index) {
              setState(() {
                this.currentIndex = index;
              });
            },
            selectedItemColor: this._selectcolor,
            unselectedItemColor: this._bottombarcolor,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text('首页', style: TextStyle(fontSize: 10.0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.widgets,
                  ),
                  title: Text('分类', style: TextStyle(fontSize: 10.0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.navigation,
                  ),
                  title: Text('发现', style: TextStyle(fontSize: 10.0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_shopping_cart,
                  ),
                  title: Text('购物车', style: TextStyle(fontSize: 10.0))),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  title: Text('我的', style: TextStyle(fontSize: 10.0))),
            ],
          ),
          body: pageList[currentIndex]),
    );
  }
}
