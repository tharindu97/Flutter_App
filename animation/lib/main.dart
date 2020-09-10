import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double _height = 100.0;
  double _width = 100.0;

  void _increaseWidth(){
    setState(() {
      _width = _width >= 320.0 ? 100.0 : _width += 50.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.elasticOut,
        color: Colors.red,
        height: _height,
        width: _width,
        child: FlatButton(
          onPressed: _increaseWidth, 
          child: Text('Tap to\nGrow Width\n$_width')
        ),
      ),
    );
  }
}

