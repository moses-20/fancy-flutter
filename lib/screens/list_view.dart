/*
this file contains a listview and a dialog box experiment
*/

import 'package:flutter/material.dart';

class ListerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(4.0),
      itemBuilder: (cxt, i) {
        return ListTile(
          title: Text('List Tile Title'),
          subtitle: Text('Subtitle Me'),
          leading: CircleAvatar(
            child: Icon(Icons.face),
          ),
          trailing: RaisedButton(
            onPressed: () {
              deleteDialog(context).then((value) {
                print('VALUE IS: $value');
              });
            },
            child: Text(
              'Delete',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 16.0,
              ),
            ),
          ),
        );
      },
    );
  }
}

Future<bool> deleteDialog(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('You wanna Delete?'),
        content: Text('this particular list tile will be deleted'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text('No'),
          ),
          RaisedButton(
            color: Colors.yellow,
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: Text(
              'Yes',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ],
      );
    },
  );
}
