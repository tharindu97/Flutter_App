import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.pinkAccent,
                  ),
                  Positioned(
                    bottom: 55,
                    right: 100,
                    child: Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(320),
                        color: Colors.cyanAccent
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 100,
                    child: Container(
                      height: 290,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.yellowAccent
                      ),
                    )
                  ),
                  Positioned(
                    bottom: 100,
                    left: 150,
                    child: Container(
                      height: 330,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.greenAccent
                      ),
                    )
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 45,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0
                              ),
                              image: DecorationImage(
                                image: AssetImage('images/icon.jpeg')
                              )
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width-120,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu), 
                              onPressed: (){},
                              color: Colors.white,
                              iconSize: 28.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          )
                        ],
                      ),
                      SizedBox(height: 45.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Hi Welcom',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(25),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,
                                color: Colors.amber,
                                size: 30.0,
                              ),
                              contentPadding: EdgeInsets.only(left: 20,top: 15,bottom: 10),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.pink
                              )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}