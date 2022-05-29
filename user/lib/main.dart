import 'package:flutter/material.dart';
import 'package:user/config/route.dart';
import 'package:user/pages/detail_page.dart';
import 'package:user/pages/home_page.dart';
import 'package:user/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      theme: AppTheme.lightTheme,
      home: HomePage(),
      /* routes: Routes.getRoute(),
      onGenerateRoute: (settings) =>
          Routes.onGenerateRoute(settings), //lemda functiom hernu parne xa */

      debugShowCheckedModeBanner: false,
      // initialRoute: "SplashPage",
    );
  }
}
