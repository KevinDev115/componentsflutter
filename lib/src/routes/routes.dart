import 'package:componentsflutter/src/pages/card_page.dart';
import 'package:flutter/material.dart';

// Pages
import 'package:componentsflutter/src/pages/alert_page.dart';
import 'package:componentsflutter/src/pages/avatar_page.dart';
import 'package:componentsflutter/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
