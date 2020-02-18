import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/platzi_trips.dart';
import 'package:platzi_tripss_app/platzi_trips_cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatziTripsCupertino(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStrings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Reto #2"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/crop.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              color: Colors.white.withOpacity(.3),
              // constraints: BoxConstraints.expand(),
              constraints: BoxConstraints.expand(height: 60),
              child: Center(
                child: Text(
                  "Plazi Lover",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
