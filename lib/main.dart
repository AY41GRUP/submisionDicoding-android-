import 'package:flutter/material.dart';
import 'package:submision_dicoding/beranda.dart' as beranda;
import 'package:submision_dicoding/about.dart' as about;


void main(){
  runApp(new MaterialApp(
   title: "KebiasaanKu",
   home: new Home(),
  ));
}

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {


  TabController controller;

  @override

  void initState(){
    controller = new TabController(vsync: this, length: 2);

    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(

        backgroundColor: Colors.blue,
        

         title: new Text("KebiasaanKu"),

           bottom: new TabBar(
             controller: controller,
             tabs: <Widget>[
              new Tab(icon: new Icon(Icons.home),),
              new Tab(icon: new Icon(Icons.account_circle),)
              
             ],
        ),
      ),

      body: new TabBarView(

        controller: controller,
        children: <Widget>[
 
          new beranda.Beranda(),
          new about.About()
          
        ],
      ),
    );
  }
}