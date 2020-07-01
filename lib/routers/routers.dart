import 'package:flutter/material.dart';

import '../pages/Classify_page/Classify_page.dart';
import '../pages/Home_page/Home_page.dart';

final routes = {
  '/home': () => HomePage(),
  '/classify': () => ClassifyPage(),
};

// ignore: top_level_function_literal_block
var onGenerateRoute = ( settings) {
  // If you push the PassArguments route
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

    if(pageContentBuilder == null){
      return MaterialPageRoute(
        builder: (context)=>routes['/error']());
    }

    if (settings.arguments != null) {
      return MaterialPageRoute(
          builder: (context) => pageContentBuilder(settings.arguments));
    } else {
      return MaterialPageRoute(builder: (context) => pageContentBuilder());
    }
  
};
