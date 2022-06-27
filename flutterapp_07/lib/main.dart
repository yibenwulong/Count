import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Demo',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new HomePage(title: 'Demo'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var display1;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'You have pushed the button this many times:',
          ),
          new Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          new IconButton(
            icon: new Icon(
              _counter != 0 ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            iconSize: 100.0,
            onPressed: () {
              setState(() {
                _counter = 0;
              });
            },
          ),
        ],
      )),
      floatingActionButton: new FloatingActionButton(
        onPressed: _increaseCounter,
        tooltip: 'press',
        child: new Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
