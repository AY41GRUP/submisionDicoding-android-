import 'package:flutter/material.dart';


class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(
                Icons.access_time,
                color: Colors.blue,
                size: 50.0,
              ),
              title: Text('apa yang saya lakukan di jam 05.00'),
              
            
            ), 
          ],
        ),
      ),
    );
  }
}
