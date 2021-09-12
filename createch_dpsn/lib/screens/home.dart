import 'package:flutter/material.dart';
import '../models/globals.dart' as globals;

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int strength = globals.pollution;
  @override
  Widget build(BuildContext context) {
    Color GetColor() {
      if (strength < 33) {
        return Color(0xFF06B900);
      } else {
        if (strength < 64) {
          return Color(0xFFC0BD00);
        } else {
          if (strength < 88) {
            return Color(0xFFCA8A36);
          } else {
            if (strength < 126) {
              return Color(0xFF8D2424);
            } else {
              return Color(0xFF430070);
            }
          }
        }
      }
    }

    String GetText() {
      if (strength < 33) {
        return '''Air quality is Satisfactory''';
      } else {
        if (strength < 64) {
          return '''Air Quality is Moderate''';
        } else {
          if (strength < 88) {
            return '''Air quality might be harmful to \nsensitive groups''';
          } else {
            if (strength < 126) {
              return '''Air quality is harmful''';
            } else {
              return '''Air quality is Hazardous''';
            }
          }
        }
      }
    }

    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Color(0xFF292A2C),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 38),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.grey[700]),
                      width: 150,
                      height: 102,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[700]),
                      width: 220,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Polluterito",
                            style: TextStyle(
                                fontSize: 36,
                                color: Color(0xFF8FBCFF),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              Text(
                                globals.name_city,
                                style: TextStyle(
                                    color: Color(0xFFCCCCCC),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(", ",
                                  style: TextStyle(
                                      color: Color(0xFFCCCCCC),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              Text(globals.name_country,
                                  style: TextStyle(
                                      color: Color(0xFFCCCCCC),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 35,
                      right: 1,
                      child: Icon(
                        Icons.drag_indicator,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: SizedBox(
                            width: 220,
                            height: 220,
                            child: Material(
                              borderRadius: BorderRadius.circular(180),
                              color: GetColor(),
                              elevation: 30,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: GetColor(),
                                    borderRadius: BorderRadius.circular(180)),
                                padding: EdgeInsets.all(24),
                                child: Material(
                                  borderRadius: BorderRadius.circular(180),
                                  elevation: 15,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(180),
                                      color: Color(0xFFE0E0E0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        strength.toString(),
                                        style: TextStyle(
                                            color: Color(0xFF313E57),
                                            fontSize: 72,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Card(
                          margin: const EdgeInsets.fromLTRB(5.0, 5.0, 16.0, 0),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: GetColor()),
                                  child: Center(
                                    child: Icon(
                                      Icons.air_rounded,
                                      color: Colors.grey[100],
                                      size: 30,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  GetText(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
