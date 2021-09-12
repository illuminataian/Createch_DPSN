import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/read.dart';
import 'screens/select.dart';
import 'services/routegenerator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 1;

  final screens = [
    SelectPage(),
    HomePage(),
    ReadSection(),
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          index: _currentIndex,
          backgroundColor: Color(0xFF292A2C),
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(
              Icons.location_on,
            ),
            Icon(
              Icons.circle_outlined,
              size: 25,
            ),
            Icon(
              Icons.book,
            ),
          ],
          onTap: (index) => setState(() => _currentIndex = index)),
    );
  }
}
