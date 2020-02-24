import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/global.dart';

class MarkPage extends StatefulWidget{
  MarkPage({Key key}) : super(key:key);

  @override
  MarkPageState createState() => MarkPageState();
}

class MarkPageState extends State<MarkPage>{
  @override
  Widget build(BuildContext context) {
    final global = Provider.of<Global>(context);

    return Form(
      child: Column(
        children: <Widget>[
          Text(
            global.getName,
          ),
          RaisedButton(
            onPressed: () {
              global.clearName();
            },
            child: Text('Clear'),
          ),
        ]
      )
     );
  }
}
