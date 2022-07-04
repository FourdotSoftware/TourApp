import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';

class BackNextBox extends StatelessWidget {
  const BackNextBox(
    this.icon, {
    Key? key,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
