import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = 300;
    double heigth = 350;
    double left = 20.0;

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImageWithFabIcon(
            pathImage: "assets/img/beach_palm.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/mountain.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/mountain_stars.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/river.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
          CardImageWithFabIcon(
            pathImage: "assets/img/sunset.jpeg",
            iconData: Icons.favorite_border,
            width: width,
            height: heigth,
            left: left,
          ),
        ],
      ),
    );
  }
}
