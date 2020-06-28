import  'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('购物车'),
    );
  }
}