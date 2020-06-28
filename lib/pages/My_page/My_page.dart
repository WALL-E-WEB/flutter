import  'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('我的'),
    );
  }
}