import 'package:flutter/material.dart';

import 'package:user/pages/detail_page.dart';
import 'package:user/pages/home_page.dart';
import 'package:user/pages/splash_page.dart';
import 'package:user/widget/costume_route.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      //Map where string is the key
      '/': (_) => SplashPage(), //and widgetbuilder is value
      '/HomePage': (_) => HomePage(),
    };
  }

  static onGenerateRoute(RouteSettings settings) {
    // final List<String> pathElements = settings.name.split('/');
    final List<String> pathElements = settings.name!.split('/');
    if (pathElements[0] != '' || pathElements.length == 1) {
      return null;
    }
    switch (pathElements[1]) {
      case "DetailPage":
        return CustomRoute<bool>(
            builder: (BuildContext context) => DetailPage(
                //    model: settings.arguments,
                ));
    }
  }
}
