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
  double _left = 0.0;

  void _increaseWidth() {
    setState(() {
      _left = _left >= 300.0 ? 0.0 : _left += 100.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPosition'),
        centerTitle: true,
      ),
      body: GestureDetector(
        child: Stack(
          fit: StackFit.expand,
          children: [
            AnimatedPositioned(
              child: Icon(
                Icons.free_breakfast,
                size: 128.0,
                color: Colors.amber,
              ), 
              duration: Duration(seconds: 2),
              left: _left,
              curve: Curves.elasticOut,
            )
          ],
        ),
        onTap: () {
          _increaseWidth();
        },
      ),
    );
  }
}