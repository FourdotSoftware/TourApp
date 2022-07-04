import 'package:flutter/material.dart';

class HistoryImage extends StatelessWidget {
  const HistoryImage(
    this.image, {
    Key? key,
    this.isMini = false,
  }) : super(key: key);
  final String image;
  final bool isMini;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        image,
        height: isMini ? 60 : 70,
        width: isMini ? 60 : 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
