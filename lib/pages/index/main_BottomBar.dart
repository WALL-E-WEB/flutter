import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  // BottomBar({Key key}) : super(key: key);
   Function fn ;
   BottomBar({this.fn});
  @override
  BottomBarState createState() => BottomBarState(fn:this.fn);
}

class BottomBarState extends State<BottomBar> {
  Color _bottombarcolor = Color(0xFF666666);
  Color _selectcolor = Color(0xFFF63515);
  int currentIndex = 0;
  var fn;
  BottomBarState({Function fn});
  @override
  Widget build(BuildContext context) {
    int cua =2;
    return BottomNavigationBar(
      currentIndex: this.currentIndex,
      onTap: (int index) {
        setState(() {
          this.currentIndex = index;
          
        });
       
      },
      selectedItemColor: this._selectcolor,
      unselectedItemColor: this._bottombarcolor,
      showSelectedLabels :true,
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
    );
  }
}

mixin StateBottomBar {}
