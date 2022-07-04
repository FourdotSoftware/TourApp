import 'package:flutter/material.dart';

class AppPaddings {
  static Padding smallPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(10),
        child: child,
      );
  static Padding minPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(5),
        child: child,
      );

  static Padding pagePadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(25),
        child: child,
      );

  static Padding mediumPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(15),
        child: child,
      );
  static Padding standartPadding({Widget? child}) => Padding(
        padding: EdgeInsets.all(20),
        child: child,
      );

  static Padding symmetricPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: child,
      );
  static Padding minSymmetricPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: child,
      );

  static Padding circleSymmetricPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: child,
      );
  static Padding maxSymmetricPadding({Widget? child}) => Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
        child: child,
      );
}
