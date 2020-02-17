import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/gradient_back.dart';
import 'package:platzi_tripss_app/header_appbar.dart';
import 'package:platzi_tripss_app/review_list.dart';
import 'description_place.dart';

void main() => runApp(MyApp());

String descriptionPlace =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet porta dolor, nec semper purus. Donec sed imperdiet est. Nunc elit metus, congue quis lacinia luctus, pellentesque eget elit. Curabitur imperdiet imperdiet lectus id pretium. Mauris felis sapien, consectetur ac libero vitae, gravida ullamcorper nulla. Phasellus mattis efficitur enim. Fusce consectetur dui et lacus congue rhoncus. Cras id erat ipsum. Integer venenatis tellus at feugiat condimentum.";
String namePlace = "karmaland";
int stars = 4;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace(namePlace, stars, descriptionPlace),
                ReviewList(),
              ],
            ),
            HeaderAppBar()
          ],
        ),
      ),
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
