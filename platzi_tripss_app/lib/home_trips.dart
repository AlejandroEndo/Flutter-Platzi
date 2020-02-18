import 'package:flutter/material.dart';
import 'package:platzi_tripss_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String descriptionPlace =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet porta dolor, nec semper purus. Donec sed imperdiet est. Nunc elit metus, congue quis lacinia luctus, pellentesque eget elit. Curabitur imperdiet imperdiet lectus id pretium. Mauris felis sapien, consectetur ac libero vitae, gravida ullamcorper nulla. Phasellus mattis efficitur enim. Fusce consectetur dui et lacus congue rhoncus. Cras id erat ipsum. Integer venenatis tellus at feugiat condimentum.";
  String namePlace = "karmaland";
  int stars = 4;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(namePlace, stars, descriptionPlace),
            ReviewList(),
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
