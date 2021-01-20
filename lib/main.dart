import 'package:flutter/material.dart';
import 'screens/list_view.dart';
import 'routes/flu_tabs.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    initialRoute: '/',
    routes: {
      '/': (context) => Flutabs(),
      '/home': (context) => _Home(),
    },
  ));
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raja'),
      ),
      body: ListerView(),
    );
  }
}
