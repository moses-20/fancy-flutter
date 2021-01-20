import 'package:flutter/material.dart';
import 'screens/list_view.dart';
import 'pages/flu_tabs.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/flutabs',
    routes: {
      '/': (context) => _Home(),
      '/flutabs': (context) => Flutabs(),
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
