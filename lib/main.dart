import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/global.dart';
import 'models/config.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Global()),
    ],
    child: App(),
  )
);

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

  int _index = 0;

  _onTap(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageStorage(
        child: Config.pages[_index],
        bucket: Config.bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        type: Config.navigationBar.type,
        fixedColor: Config.navigationBar.fixedColor,
        items: Config.navigationBar.items,
        showSelectedLabels: Config.navigationBar.showSelectedLabels,
        showUnselectedLabels: Config.navigationBar.showUnselectedLabels,
        onTap: _onTap,
      ),
    );
  }
}
