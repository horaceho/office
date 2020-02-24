import 'package:flutter/material.dart';

class ListPage extends StatefulWidget{
  ListPage({Key key}) : super(key:key);

  @override
  ListPageState createState() => ListPageState();
}

class ListPageState extends State<ListPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
        ],
      ),
    );
  }
}
