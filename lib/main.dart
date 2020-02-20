import 'package:flutter/material.dart';
import 'models/office.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Office',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: HomePage(title: 'Office'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final office = Office();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '...',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: office.navigationBarItems(),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) => setState(() {
          _index = index;
        }),
      ),
    );
  }
}
