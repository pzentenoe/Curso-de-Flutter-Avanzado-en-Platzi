import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/text_input_location.dart';
import 'package:platzi_trips_app/widgets/gradient_back.dart';
import 'package:platzi_trips_app/widgets/text_input.dart';
import 'package:platzi_trips_app/widgets/title_header.dart';

class AddPlaceScreen extends StatefulWidget {
  File image;

  AddPlaceScreen({Key key, this.image});

  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace = TextEditingController();


    return Scaffold(
      body: Stack(
        children: <Widget>[
          GradientBack(
            height: 300.0,
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25.0, left: 5.0),
                child: SizedBox(
                  height: 45.0,
                  width: 45.0,
                  child: IconButton(
                    iconSize: 30.0,
                    icon: Icon(Icons.keyboard_arrow_left),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  width: screenWidth,
                  padding: EdgeInsets.only(
                    top: 45.0,
                    left: 20.0,
                    right: 10.0,
                  ),
                  child: TitleHeader(
                    title: "Add a new Place",
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom: 20.0),
            child: ListView(
              children: <Widget>[
                //FOTO
                Container(),
                //TextField Title
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: TextInput(
                    hintText: "Title",
                    inputType: TextInputType.text,
                    maxLines: 1,
                    controller: _controllerTitlePlace,
                  ),
                ),
                TextInput(
                  hintText: "Description",
                  inputType: TextInputType.multiline,
                  maxLines: 5,
                  controller: _controllerDescriptionPlace,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TitleInputLocation(
                    hintText: "Add Location",
                    iconData: Icons.location_on,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
