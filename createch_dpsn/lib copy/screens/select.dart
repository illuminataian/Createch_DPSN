import 'package:flutter/material.dart';
import '../models/Info.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<Info> info = [
    Info(text: "Delhi", strength: 96, country: "India"),
    Info(text: 'Tokyo', strength: 70, country: "Japan"),
    Info(text: "Washingtion DC", strength: 54, country: "USA"),
    Info(text: "London", strength: 50, country: "UK"),
    Info(text: "Moscow", strength: 57, country: "Russia"),
    Info(text: "Oslo", strength: 75, country: "Norway"),
    Info(text: "Bern", strength: 55, country: "Switzerland"),
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
      body: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  title: Text(info[index].text),
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    "/",
                    arguments: {
                      'poll': info[index].strength,
                    },
                  ),
                ),
              ),
            );
          }),
    );
  }
}
