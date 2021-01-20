import 'package:flutter/material.dart';
import 'package:raja/pages/bicycle_tab_view.dart';
import 'package:raja/pages/shuttle_tab_view.dart';

class Flutabs extends StatefulWidget {
  @override
  _FlutabsState createState() => _FlutabsState();
}

class _FlutabsState extends State<Flutabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var tabBar = TabBar(
      controller: controller,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.airport_shuttle),
        ),
        Tab(
          icon: Icon(Icons.bike_scooter),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tabs'),
        backgroundColor: Colors.teal,
      ),
      bottomNavigationBar: Material(
        color: Colors.teal,
        child: tabBar,
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Shuttle(),
          Bicycle(),
        ],
      ),
    );
  }
}
