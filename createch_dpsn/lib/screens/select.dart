import 'package:flutter/material.dart';
import '../models/Info.dart';
import '../models/globals.dart' as globals;

class SelectPage extends StatefulWidget {
  const SelectPage({Key key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<Info> info = [
    Info(text: "Delhi", strength: 96, country: "India"),
    Info(text: 'Tokyo', strength: 70, country: "Japan"),
    Info(text: "WDC", strength: 54, country: "USA"),
    Info(text: "London", strength: 50, country: "UK"),
    Info(text: "Moscow", strength: 57, country: "Russia"),
    Info(text: "Oslo", strength: 75, country: "Norway"),
    Info(text: "Nairobi", strength: 55, country: "Kenya"),
    Info(text: "Beijing", strength: 107, country: "China"),
    Info(text: "Ankara", strength: 50, country: "Turkey"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick location"),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.grey[100],
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[700]),
        child: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  elevation: 10,
                  color: Colors.grey.shade800,
                  child: ListTile(
                      title: Text(
                        info[index].text,
                        style: TextStyle(color: Colors.grey.shade100),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          "/",
                        );
                        setState(() {
                          globals.name_city = info[index].text;
                          globals.pollution = info[index].strength;
                          globals.name_country = info[index].country;
                        });
                      }),
                ),
              );
            }),
      ),
    );
  }
}
