import 'package:flutter/material.dart';
import 'package:new_app/home/home.dart';
import 'package:new_app/details_page.dart';
import 'package:new_app/routes/constants.dart';

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePageViewRoute:
        return MaterialPageRoute(builder: (_) => Home());
        
      // case DetailsPageViewRoute:
      //   return MaterialPageRoute(builder: (_) => DetailsPage());

      default:
        return MaterialPageRoute(builder: (_) => Home());
    }
  }
}
