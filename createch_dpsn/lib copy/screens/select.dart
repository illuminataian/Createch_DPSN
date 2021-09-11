import 'package:flutter/material.dart';
import '../models/Info.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key key}) : super(key: key);

  @override
  _SelectPageState createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  List<Info> info = [
    Info(text: "Delhi", strength: 124),
    Info(text: 'Berlin', strength: 38),
    Info(text: "Moscow", strength: 76),
    Info(text: "Ankara", strength: 26),
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
                    "/home",
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
