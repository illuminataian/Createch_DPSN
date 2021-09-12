import 'package:flutter/material.dart';

class ReadSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How to reduce Pollution ? "),
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Text(
                'Welcome !!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child:
                  Text('So guys first of all thanks for downloading our app. '),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  'Hmm That is a tricky question but I think you will have to read this page long paragraph. That will be boring but to Save and Recultivate Earth I guess you can do it. So if you see your country in the Select Location Page go there and select your city and then check the Pollution Stats.There you will find out the stats of your country. Now read this carefully.'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  'If the Pollution stats if between 20-70.  Then follow this - Reduce the number of trips you take in your car.Reduce or eliminate fireplace and wood stove use.Avoid burning leaves, trash, and other materials.'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  'If the pollution is between 70-150 then your city has very high pollution. Using public transportation, car pool. More CNG vehicles. Proper road signs.Maintenance of roads. Solar power.'),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  'Now it is in your hands to protect this Earth. We did whatever we could. Now it is up to all you users. '),
            ),
          ],
        ),
      ),
    );
  }
}
