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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.location_on), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.circle_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: ""),
          ],
          onTap: (index) => setState(() => _currentIndex = index)),
    );
  }
}
