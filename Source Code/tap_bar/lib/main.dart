import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as smartphone;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState(){
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Daftar Elektronik"),
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer), text: "Komputer",),
            new Tab(icon: new Icon(Icons.headset), text: "Headset",),
            new Tab(icon: new Icon(Icons.radio), text: "radio",),
            new Tab(icon: new Icon(Icons.smartphone), text: "smartphone",),
          ],
        ),
      ),
      
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new komputer.Komputer(),
          new headset.Headset(),
          new radio.Radio(),
          new smartphone.Smartphone(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.amber,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.computer),),
            new Tab(icon: new Icon(Icons.headset), ),
            new Tab(icon: new Icon(Icons.radio),),
            new Tab(icon: new Icon(Icons.smartphone),),
          ],
        ),
      ),
    );
  }
}