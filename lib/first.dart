import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

var btnColors = Color(0xFF1D4793);
var textColor = Colors.white;
var linesColor = Colors.black;
var colorssss = Colors.cyan;

var about_us = "About Us";
var product = "Product";
var service = "Service";
var project = "Project";
var gallery = "Gallery";
var contact_us = "Contact Us";
var client = "Client";
var lang = "عربي";

final slider = Carousel(
  dotSize: 4.0,
  dotSpacing: 12.0,
  indicatorBgPadding: 8.0,
  dotColor: Colors.blue,
  images: [
    AssetImage('images/s01.png'),
    AssetImage('images/s02.png'),
    AssetImage('images/s03.png'),
  ],
);

final firstRow = Row(
  children: <Widget>[
    Expanded(
      flex: 1,
      child: InkWell(
          splashColor: linesColor,
          highlightColor: linesColor,
          onTap: () => debugPrint("about us"),
          child: Container(
              color: btnColors,
              margin: EdgeInsets.only(right: 1.5, top: 3.0),
              child: Center(
                  child: Text(
                about_us,
                style: TextStyle(color: textColor, fontSize: 20.0),
              )))),
    ),
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(left: 1.5, top: 3.0),
          child: Center(
              child: Text(
            product,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    )
  ],
);

final secondRow = Row(
  children: <Widget>[
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(right: 1.5, top: 3.0),
          child: Center(
              child: Text(
            service,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    ),
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(left: 1.5, top: 3.0),
          child: Center(
              child: Text(
            gallery,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    )
  ],
);
final thirdRow = Row(
  children: <Widget>[
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(right: 1.5, top: 3.0),
          child: Center(
              child: Text(
            project,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    ),
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(left: 1.5, top: 3.0),
          child: Center(
              child: Text(
            contact_us,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    )
  ],
);

final fourthRow = Row(
  children: <Widget>[
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(right: 1.5, top: 3.0),
          child: Center(
              child: Text(
            client,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    ),
    Expanded(
      flex: 1,
      child: Container(
          color: btnColors,
          margin: EdgeInsets.only(left: 1.5, top: 3.0),
          child: Center(
              child: Text(
            lang,
            style: TextStyle(color: textColor, fontSize: 20.0),
          ))),
    )
  ],
);

class HomePage extends StatelessWidget {
  final buttons = Column(
    children: <Widget>[
      Expanded(
        child: slider,
        flex: 3,
      ),
      Expanded(
        child: firstRow,
        flex: 1,
      ),
      Expanded(
        child: secondRow,
        flex: 1,
      ),
      Expanded(
        child: thirdRow,
        flex: 1,
      ),
      Expanded(
        child: fourthRow,
        flex: 1,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(color: linesColor, child: buttons);
  }
}
