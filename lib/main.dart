import 'package:flutter/material.dart';
import './Oil.dart' as oil;
import './Punak.dart' as punak;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget{
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState()
  {
    super.initState();
    controller = new TabController(vsync: this,length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
      appBar: new AppBar(
      title: new Text("Varavu Kanaku"),
      backgroundColor: Colors.red,
      bottom: new TabBar(
        controller: controller,
        tabs: <Tab>[
          new Tab(text: "OIL"),
          new Tab(text: "Punak")
        ]
      )),
    body: new TabBarView(
      controller: controller,
      children: <Widget>[
        new oil.Oil(),
        new punak.Punak()
      ]
    )
    );
  }
}