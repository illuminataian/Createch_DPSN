import 'package:flutter/material.dart';

import '../main.dart';
import '../screens/select.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MainApp());
      case '/map':
        return MaterialPageRoute(builder: (_) => SelectPage());
      default:
        // If there is no such named route in the switch statement, e.g. /loltherenoroute_haha
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
