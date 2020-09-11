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

  bool _crossFadeStateShowFirst = true;

  void _crossFade(){
    setState(() {
      _crossFadeStateShowFirst = 
      _crossFadeStateShowFirst ? false : true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
      ),
      body: AnimatedCrossFade(

        duration: Duration(milliseconds: 500),
        sizeCurve: Curves.bounceOut,
        crossFadeState: _crossFadeStateShowFirst 
            ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
        
        firstChild: Container(
          color: Colors.amber,
          height: 100.0,
          width: 100.0,
          child: FlatButton(
            onPressed: _crossFade, 
            child: Text('Tap to\nGrow Width')
          ),
        ),

        secondChild: Container(
          color: Colors.red,
          height: 200.0,
          width: 200.0,
          child: FlatButton(
            onPressed: _crossFade, 
            child: Text('Tap to\nGrow Width')
          ),
        ), 
      ),
    );
  }
}
