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
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _opacity = 1.0;
  void _animatedOpacity(){
    setState(() {
      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Animated Opacity'),
      ),
      body: AnimatedOpacity(
        opacity: _opacity, 
        duration: Duration(milliseconds: 500),
        child: Container(
          color: Colors.amber,
          height: 100.0,
          width: 100.0,
          child: FlatButton(
            onPressed: _animatedOpacity, 
            child: Text('Tap to Fad',
              style: TextStyle(
                color: Colors.red
              ),
            )
          ),
        ),
      ),
    );
  }
}