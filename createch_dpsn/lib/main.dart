import 'package:flutter/material.dart';
import 'package:createch_dpsn/services/routegenerator.dart';
import 'package:createch_dpsn/screens/home.dart';
import 'package:createch_dpsn/screens/select.dart';

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
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 1;

  final screens = [
    SelectPage(),
    HomePage(),
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
                icon: Icon(Icons.circle_outlined), label: "")
          ],
          onTap: (index) => setState(() => _currentIndex = index)),
    );
  }
}
