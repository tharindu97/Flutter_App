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

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  double _size = 100.0;

  void _increaseWidth(){
    setState(() {
      _size = _size >=300.0 ? 100.0 : _size += 100.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Size'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          AnimatedSize(
            duration: Duration(seconds: 1), 
            vsync: this,
            child: FlatButton(
              onPressed: _increaseWidth, 
              child: Icon(
                Icons.cake,
                size: _size,
                color: Colors.orange,
              )
            ),
          )
        ],
      ),
    );
  }
}
