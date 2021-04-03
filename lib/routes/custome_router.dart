import 'package:flutter/material.dart';
import 'package:flutter_ess_app/Views/Login/home_page.dart';
import 'package:flutter_ess_app/Views/Login/walkththrough.dart';
import 'package:flutter_ess_app/not_found_page.dart';
import 'package:flutter_ess_app/routes/route_names.dart';

class CustomRouter{

  static Route<dynamic> allRoutes(RouteSettings settings){
    switch(settings.name){
      case homeRoute :
        return MaterialPageRoute(builder: (_) => HomePage());
      // case aboutRoute :
      //   return MaterialPageRoute(builder: (_) => AboutPage());
      // case settingsRoute :
      //   return MaterialPageRoute(builder: (_) => SettingsPage());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}