import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/global.dart';

class SelfPage extends StatefulWidget{
  SelfPage({Key key}) : super(key:key);

  @override
  SelfPageState createState() => SelfPageState();
}

class SelfPageState extends State<SelfPage>{

  final _formKey = GlobalKey<FormState>();
  final _textEditController = TextEditingController();

  @override
  void dispose() {
    _textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final global = Provider.of<Global>(context);

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
          TextFormField(
            controller: _textEditController,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                global.setName(_textEditController.text);
                Scaffold
                  .of(context)
                  .showSnackBar(SnackBar(content: Text(_textEditController.text)));
              }
            },
            child: Text('Submit'),
          ),
        ]
      )
     );
  }
}
