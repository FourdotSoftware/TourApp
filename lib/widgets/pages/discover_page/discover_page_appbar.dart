import 'package:flutter/material.dart';

import '../../texts/title1.dart';

class DiscoverPageAppBar extends StatelessWidget {
  const DiscoverPageAppBar({
    Key? key,
    this.data,
    this.icon,
    this.icon2,
  }) : super(key: key);
  final String? data;
  final IconData? icon;
  final IconData? icon2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back_ios),
        Title1(data!),
        Row(
          children: [
            Icon(icon2),
            Icon(icon),
          ],
        )
      ],
    );
  }
}
