import 'package:flutter/material.dart';

// class NavBar extends BottomAppBar{
//   NavBar():super();
// }

class NavBottomBar {
  static returnBarConfig({void Function(int index) tabFun, int currentIndex}) {
  Color _bottombarcolor = Color(0xFF666666);
  Color _selectcolor = Color(0xFFF63515);
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: tabFun,
      selectedItemColor:_selectcolor,
      unselectedItemColor: _bottombarcolor,
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
    );
  }
}
