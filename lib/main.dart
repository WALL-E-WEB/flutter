import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/index/index_page.dart';

void main() {
  runApp(new MyApp());
  SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IndexPage();
  }
}
