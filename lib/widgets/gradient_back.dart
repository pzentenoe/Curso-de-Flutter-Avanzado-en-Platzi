import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "";
  double height = 0.0; //Heigth = null then height full screen

  GradientBack({Key key, this.title, this.height});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (this.height == null) {
      this.height = screenHeight;
    }

    return Container(
      width: screenWidth,
      height: height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child:
          /*Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: "Lato", fontWeight: FontWeight.bold),
      )*/
          FittedBox(
        fit: BoxFit.none,
        alignment: Alignment(-1.5, 0.8),
        child: Container(
          width: screenHeight,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            borderRadius: BorderRadius.circular(screenHeight / 2),
          ),
        ),
      ),
      //alignment: Alignment(-0.9, -0.6),
    );
  }
}
