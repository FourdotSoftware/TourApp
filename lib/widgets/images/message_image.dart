import 'package:flutter/material.dart';

class MessageImage extends StatelessWidget {
  const MessageImage(
    this.image, {
    Key? key,
    // this.isMini = false,
  }) : super(key: key);
  final String image;
  // final bool isMini;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        image,
        height: 40,
        width: 40,
        fit: BoxFit.cover,
      ),
    );
  }
}
