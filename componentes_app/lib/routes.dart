import 'package:flutter/material.dart';
import 'src/pages/alert_page.dart';
import 'src/pages/avatar_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
  '/': (BuildContext context) => const HomePage(),
  'alert': (BuildContext context) => const AlertPage(),
  'avatar': (BuildContext context) => const AvatarPage(),
  'card': (_) => const CardPage(),
  };
}