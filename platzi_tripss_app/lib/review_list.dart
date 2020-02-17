import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/profile.jpg", "Willy Rex",
            "1 review 5 photos", "Te amo Vegeta <3"),
        Review("assets/images/profile.jpg", "El Rubius OMG",
            "1 review 5 photos", "Estoy tan solo como mi perro"),
        Review("assets/images/profile.jpg", "Vegeta777",
            "1 review 5 photos", "Madre mia Willy que haces aqui xdxdxd"),
      ],
    );
  }
}
