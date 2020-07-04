import 'package:flutter/material.dart';
import './Home_page_AppBar.dart';
import './Home_page_BannerAndSearch.dart';
import './Home_page_Search.dart';



class HomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(),
        body: Column(
          children: <Widget>[
            
            HomeBannerAndSearch( 
              search: HomeSearch(),
            ),
            // HomeSearch
          ],
        ));
  }
}
